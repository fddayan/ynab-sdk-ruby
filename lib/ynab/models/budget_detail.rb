=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module YNAB
  class BudgetDetail
    attr_accessor :id

    attr_accessor :name

    # The last time any changes were made to the budget from either a web or mobile client
    attr_accessor :last_modified_on

    # The earliest budget month
    attr_accessor :first_month

    # The latest budget month
    attr_accessor :last_month

    attr_accessor :date_format

    attr_accessor :currency_format

    attr_accessor :accounts

    attr_accessor :payees

    attr_accessor :payee_locations

    attr_accessor :category_groups

    attr_accessor :categories

    attr_accessor :months

    attr_accessor :transactions

    attr_accessor :subtransactions

    attr_accessor :scheduled_transactions

    attr_accessor :scheduled_subtransactions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'last_modified_on' => :'last_modified_on',
        :'first_month' => :'first_month',
        :'last_month' => :'last_month',
        :'date_format' => :'date_format',
        :'currency_format' => :'currency_format',
        :'accounts' => :'accounts',
        :'payees' => :'payees',
        :'payee_locations' => :'payee_locations',
        :'category_groups' => :'category_groups',
        :'categories' => :'categories',
        :'months' => :'months',
        :'transactions' => :'transactions',
        :'subtransactions' => :'subtransactions',
        :'scheduled_transactions' => :'scheduled_transactions',
        :'scheduled_subtransactions' => :'scheduled_subtransactions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'name' => :'String',
        :'last_modified_on' => :'DateTime',
        :'first_month' => :'Date',
        :'last_month' => :'Date',
        :'date_format' => :'DateFormat',
        :'currency_format' => :'CurrencyFormat',
        :'accounts' => :'Array<Account>',
        :'payees' => :'Array<Payee>',
        :'payee_locations' => :'Array<PayeeLocation>',
        :'category_groups' => :'Array<CategoryGroup>',
        :'categories' => :'Array<Category>',
        :'months' => :'Array<MonthDetail>',
        :'transactions' => :'Array<TransactionSummary>',
        :'subtransactions' => :'Array<SubTransaction>',
        :'scheduled_transactions' => :'Array<ScheduledTransactionSummary>',
        :'scheduled_subtransactions' => :'Array<ScheduledSubTransaction>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'last_modified_on')
        self.last_modified_on = attributes[:'last_modified_on']
      end

      if attributes.has_key?(:'first_month')
        self.first_month = attributes[:'first_month']
      end

      if attributes.has_key?(:'last_month')
        self.last_month = attributes[:'last_month']
      end

      if attributes.has_key?(:'date_format')
        self.date_format = attributes[:'date_format']
      end

      if attributes.has_key?(:'currency_format')
        self.currency_format = attributes[:'currency_format']
      end

      if attributes.has_key?(:'accounts')
        if (value = attributes[:'accounts']).is_a?(Array)
          self.accounts = value
        end
      end

      if attributes.has_key?(:'payees')
        if (value = attributes[:'payees']).is_a?(Array)
          self.payees = value
        end
      end

      if attributes.has_key?(:'payee_locations')
        if (value = attributes[:'payee_locations']).is_a?(Array)
          self.payee_locations = value
        end
      end

      if attributes.has_key?(:'category_groups')
        if (value = attributes[:'category_groups']).is_a?(Array)
          self.category_groups = value
        end
      end

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'months')
        if (value = attributes[:'months']).is_a?(Array)
          self.months = value
        end
      end

      if attributes.has_key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end

      if attributes.has_key?(:'subtransactions')
        if (value = attributes[:'subtransactions']).is_a?(Array)
          self.subtransactions = value
        end
      end

      if attributes.has_key?(:'scheduled_transactions')
        if (value = attributes[:'scheduled_transactions']).is_a?(Array)
          self.scheduled_transactions = value
        end
      end

      if attributes.has_key?(:'scheduled_subtransactions')
        if (value = attributes[:'scheduled_subtransactions']).is_a?(Array)
          self.scheduled_subtransactions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          last_modified_on == o.last_modified_on &&
          first_month == o.first_month &&
          last_month == o.last_month &&
          date_format == o.date_format &&
          currency_format == o.currency_format &&
          accounts == o.accounts &&
          payees == o.payees &&
          payee_locations == o.payee_locations &&
          category_groups == o.category_groups &&
          categories == o.categories &&
          months == o.months &&
          transactions == o.transactions &&
          subtransactions == o.subtransactions &&
          scheduled_transactions == o.scheduled_transactions &&
          scheduled_subtransactions == o.scheduled_subtransactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, last_modified_on, first_month, last_month, date_format, currency_format, accounts, payees, payee_locations, category_groups, categories, months, transactions, subtransactions, scheduled_transactions, scheduled_subtransactions].hash
    end
    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = YNAB.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
