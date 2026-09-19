# frozen_string_literal: true

require "set"

module PatentDataValidator
  VALID_STATUSES = Set.new(%w[Granted Published Filed]).freeze
  FILED_ALLOWED_FIELDS = Set.new(
    %w[id title inventors application_number year status disclosure_approved selected demo]
  ).freeze

  def self.validate!(site)
    data = site.data["patents"] || {}
    patents = data["patents"] || []
    confidential_count = data["confidential_count"] || 0
    errors = []

    unless confidential_count.is_a?(Integer) && confidential_count >= 0
      errors << "confidential_count must be a non-negative integer"
    end

    unless patents.is_a?(Array)
      raise Jekyll::Errors::FatalException, "Patent data validation failed: patents must be an array"
    end

    ids = Set.new
    numbers = Set.new
    selected_count = 0

    patents.each_with_index do |patent, index|
      unless patent.is_a?(Hash)
        errors << "record ##{index + 1}: every patent must be a mapping"
        next
      end

      label = patent["id"] || "record ##{index + 1}"
      required = %w[id title inventors year status disclosure_approved]
      required << "application_number" if patent["status"] == "Filed"
      missing = required.select { |field| patent[field].nil? || patent[field].respond_to?(:empty?) && patent[field].empty? }
      errors << "#{label}: missing #{missing.join(', ')}" unless missing.empty?

      errors << "#{label}: inventors must be a non-empty array" unless patent["inventors"].is_a?(Array) && !patent["inventors"].empty?
      errors << "#{label}: selected must be true or false" if patent.key?("selected") && ![true, false].include?(patent["selected"])
      errors << "#{label}: demo must be true or false" if patent.key?("demo") && ![true, false].include?(patent["demo"])

      errors << "#{label}: disclosure_approved must be true" unless patent["disclosure_approved"] == true
      errors << "#{label}: invalid status #{patent['status'].inspect}" unless VALID_STATUSES.include?(patent["status"])

      if patent["id"] && !ids.add?(patent["id"])
        errors << "#{label}: duplicate id"
      end

      if patent["status"] == "Filed"
        extra_fields = patent.keys.to_set - FILED_ALLOWED_FIELDS
        errors << "#{label}: Filed records may not contain #{extra_fields.to_a.sort.join(', ')}" unless extra_fields.empty?
        add_number(errors, numbers, label, patent["application_number"])
      else
        family = patent["family"]
        errors << "#{label}: Published and Granted records require a patent family" unless family.is_a?(Array) && !family.empty?
        Array(family).each_with_index do |member, member_index|
          unless member.is_a?(Hash)
            errors << "#{label}: family member ##{member_index + 1} must be a mapping"
            next
          end

          errors << "#{label}: every family member requires jurisdiction and number" if member["jurisdiction"].to_s.empty? || member["number"].to_s.empty?
          add_number(errors, numbers, label, member["number"])
        end
      end

      selected_count += 1 if patent["selected"] == true
    end

    errors << "no more than 5 patents may be selected for the homepage" if selected_count > 5
    return if errors.empty?

    raise Jekyll::Errors::FatalException, "Patent data validation failed:\n- #{errors.join("\n- ")}"
  end

  def self.add_number(errors, numbers, label, number)
    return if number.to_s.empty?

    normalized = number.to_s.upcase.gsub(/[^A-Z0-9]/, "")
    errors << "#{label}: duplicate patent or application number #{number}" unless numbers.add?(normalized)
  end
end

Jekyll::Hooks.register :site, :post_read do |site|
  PatentDataValidator.validate!(site)
end
