// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/http;

# A form field that will be displayed based on what the customer entered in another field.
public type DependentField record {
    DependentFieldFilter dependentCondition;
    EmailField|PhoneField|MobilePhoneField|SingleLineTextField|MultiLineTextField|NumberField|SingleCheckboxField|MultipleCheckboxesField|DropdownField|RadioField|DatepickerField|FileField|PaymentLinkRadioField dependentField;
};

public type FormDefinitionBase HubSpotFormDefinition;

public type LegalConsentOptionsImplicitConsentToProcess record {
    # 
    LegalConsentCheckbox[] communicationsCheckboxes;
    # 
    string communicationConsentText?;
    # 
    "implicit_consent_to_process" 'type;
    # 
    string privacyText;
    # 
    string consentToProcessText?;
};

public type HubSpotFormDefinition record {
    "hubspot" formType;
    string id;
    string name;
    string createdAt;
    string updatedAt;
    boolean archived;
    string archivedAt?;
    FieldGroup[] fieldGroups;
    HubSpotFormConfiguration configuration;
    FormDisplayOptions displayOptions;
    LegalConsentOptionsNone|LegalConsentOptionsLegitimateInterest|LegalConsentOptionsExplicitConsentToProcess|LegalConsentOptionsImplicitConsentToProcess legalConsentOptions;
};

# Options for styling the form.
public type FormDisplayOptions record {
    # Whether the form will render as raw HTML as opposed to inside an iFrame.
    boolean renderRawHtml;
    # 
    string cssClass?;
    # The theme used for styling the input fields. This will not apply if the form is added to a HubSpot CMS page.
    "default_style"|"canvas"|"linear"|"round"|"sharp"|"legacy" theme;
    # The text displayed on the form submit button.
    string submitButtonText;
    FormStyle style;
};

# A form field consisting of a multiple-line text box.
public type MultiLineTextField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "multi_line_text" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

# A form field used for collecting a mobile phone number.
public type MobilePhoneField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "mobile_phone" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
    PhoneFieldValidation validation;
};

# Styling options for the form
public type FormStyle record {
    # 
    string labelTextSize;
    # 
    string legalConsentTextColor;
    # 
    string fontFamily;
    # 
    string legalConsentTextSize;
    # 
    string backgroundWidth;
    # 
    string helpTextSize;
    # 
    string submitFontColor;
    # 
    string labelTextColor;
    # 
    "left"|"right"|"center" submitAlignment;
    # 
    string submitSize;
    # 
    string helpTextColor;
    # 
    string submitColor;
};

public type CollectionResponseFormDefinitionBaseForwardPaging record {
    ForwardPaging paging?;
    (HubSpotFormDefinition)[] results;
};

# A form field used to select a date
public type DatepickerField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "datepicker" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

public type HubSpotFormConfiguration record {
    # Whether to create a new contact when a form is submitted with an email address that doesn’t match any in your existing contacts records.
    boolean createNewContactForNewEmail;
    # Whether the form can be edited.
    boolean editable;
    # Whether to add a reset link to the form. This removes any pre-populated content on the form and creates a new contact on submission.
    boolean allowLinkToResetKnownValues;
    LifecycleStage[] lifecycleStages?;
    FormPostSubmitAction postSubmitAction;
    # The language of the form.
    "af"|"ar-eg"|"bg"|"bn"|"ca-es"|"cs"|"da"|"de"|"el"|"en"|"es"|"es-mx"|"fi"|"fr"|"fr-ca"|"he-il"|"hr"|"hu"|"id"|"it"|"ja"|"ko"|"lt"|"ms"|"nl"|"no-no"|"pl"|"pt"|"pt-br"|"ro"|"ru"|"sk"|"sl"|"sv"|"th"|"tl"|"tr"|"uk"|"vi"|"zh-cn"|"zh-hk"|"zh-tw" language;
    # Whether contact fields should pre-populate with known information when a contact returns to your site.
    boolean prePopulateKnownValues;
    # Whether the form can be cloned.
    boolean cloneable;
    # Whether to send a notification email to the contact owner when a submission is received.
    boolean notifyContactOwner;
    # Whether CAPTCHA (spam prevention) is enabled.
    boolean recaptchaEnabled;
    # Whether the form can be archived.
    boolean archivable;
    # The list of user IDs to receive a notification email when a submission is received.
    string[] notifyRecipients;
};

public type LegalConsentOptionsExplicitConsentToProcess record {
    # 
    LegalConsentCheckbox[] communicationsCheckboxes;
    # 
    string communicationConsentText?;
    # 
    string consentToProcessCheckboxLabel?;
    # 
    string consentToProcessFooterText?;
    # 
    "explicit_consent_to_process" 'type;
    # 
    string privacyText;
    # 
    string consentToProcessText?;
};

# A field consisting of a drop down with multiple choices.
public type DropdownField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # The list of available choices for this field.
    EnumeratedFieldOption[] options;
    # Additional text helping the customer to complete the field.
    string description?;
    # The values selected by default. Those values will be submitted unless the customer modifies them.
    string[] defaultValues;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "dropdown" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

# A form field consisting of a set of radio options, out of which one can be selected at a time.
public type RadioField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # The list of available choices for this field.
    EnumeratedFieldOption[] options;
    # Additional text helping the customer to complete the field.
    string description?;
    # The values selected by default. Those values will be submitted unless the customer modifies them.
    string[] defaultValues;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "radio" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

public type ForwardPaging record {
    NextPage next?;
};

public type HubSpotFormDefinitionCreateRequest record {
    "hubspot" formType;
    string name;
    string createdAt;
    string updatedAt;
    boolean archived;
    string archivedAt?;
    FieldGroup[] fieldGroups;
    HubSpotFormConfiguration configuration;
    FormDisplayOptions displayOptions;
    LegalConsentOptionsNone|LegalConsentOptionsLegitimateInterest|LegalConsentOptionsExplicitConsentToProcess|LegalConsentOptionsImplicitConsentToProcess legalConsentOptions;
};

# A form field used for collecting an email address.
public type EmailField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "email" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
    EmailFieldValidation validation;
};

# Represents the Queries record for the operation: get-/marketing/v3/forms/_getPage
public type GetMarketingV3Forms_getpageQueries record {
    # The form types to be included in the results.
    ("hubspot"|"captured"|"flow"|"blog_comment"|"all")[] formTypes?;
    # Whether to return only results that have been archived.
    boolean archived?;
    # The maximum number of results to display per page.
    int:Signed32 'limit?;
    # The paging cursor token of the last successfully read resource will be returned as the `paging.next.after` JSON property of a paged response containing more results.
    string after?;
};

# OAuth2 Refresh Token Grant Configs
public type OAuth2RefreshTokenGrantConfig record {|
    *http:OAuth2RefreshTokenGrantConfig;
    # Refresh URL
    string refreshUrl = "https://api.hubapi.com/oauth/v1/token";
|};

# Describes how a phone number should be validated.
public type PhoneFieldValidation record {
    # 
    int:Signed32 minAllowedDigits;
    # 
    int:Signed32 maxAllowedDigits;
};

public type LegalConsentOptionsNone record {
    # 
    "none" 'type;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Provides Auth configurations needed when communicating with a remote HTTP endpoint.
    http:BearerTokenConfig|OAuth2RefreshTokenGrantConfig|ApiKeysConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
|};

public type FormDefinitionCreateRequestBase HubSpotFormDefinitionCreateRequest;

# A collection of up to three form fields usually displayed in a row.
public type FieldGroup record {
    # 
    "default_group"|"progressive"|"queued" groupType;
    # The type of rich text included. The default value is text.
    "text"|"image" richTextType;
    # A block of rich text or an image. Those can be used to add extra information for the customers filling in the form. If the field group includes fields, the rich text will be displayed before the fields.
    string richText?;
    # The form fields included in the group
    (EmailField|PhoneField|MobilePhoneField|SingleLineTextField|MultiLineTextField|NumberField|SingleCheckboxField|MultipleCheckboxesField|DropdownField|RadioField|DatepickerField|FileField|PaymentLinkRadioField)[] fields;
};

# A form field used for uploading one or more files.
public type FileField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether to allow the upload of multiple files.
    boolean allowMultipleFiles;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "file" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

public type LegalConsentCheckbox record {
    # 
    int:Signed32 subscriptionTypeId;
    # The main label for the form field.
    string label;
    # Whether this checkbox is required when submitting the form.
    boolean required;
};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

# A form field used for collecting a numeric value.
public type NumberField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "number" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
    NumberFieldValidation validation?;
};

public type PaymentLinkRadioField record {
    string objectTypeId;
    boolean hidden;
    string name;
    EnumeratedFieldOption[] options;
    string description?;
    string[] defaultValues;
    DependentField[] dependentFields;
    string label;
    "payment_link_radio" fieldType;
    boolean required;
};

# A form field consisting of a set of checkboxes allowing multiple choices to be selected at one time.
public type MultipleCheckboxesField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # The list of available choices for this field.
    EnumeratedFieldOption[] options;
    # Additional text helping the customer to complete the field.
    string description?;
    # The values selected by default. Those values will be submitted unless the customer modifies them.
    string[] defaultValues;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # Determines how the field will be displayed and validated.
    "multiple_checkboxes" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

public type LegalConsentOptionsLegitimateInterest record {
    # 
    int[] subscriptionTypeIds;
    # 
    "lead"|"client"|"other" lawfulBasis;
    # 
    "legitimate_interest" 'type;
    # 
    string privacyText;
};

# Describes how a numeric value should be validated.
public type NumberFieldValidation record {
    # 
    int:Signed32 minAllowedDigits;
    # 
    int:Signed32 maxAllowedDigits;
};

# Represents the Queries record for the operation: get-/marketing/v3/forms/{formId}_getById
public type GetMarketingV3FormsFormid_getbyidQueries record {
    # Whether to return only results that have been archived.
    boolean archived?;
};

# A condition based on customer input
public type DependentFieldFilter record {
    # 
    string rangeStart;
    # 
    string[] values;
    # 
    string value;
    # 
    "eq"|"neq"|"contains"|"doesnt_contain"|"str_starts_with"|"str_ends_with"|"lt"|"lte"|"gt"|"gte"|"between"|"not_between"|"within_time_reverse"|"within_time"|"set_any"|"set_not_any"|"set_all"|"set_not_all"|"set_eq"|"set_neq"|"is_not_empty" operator;
    # 
    string rangeEnd;
};

# A form field consisting of a single checkbox.
public type SingleCheckboxField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # Determines how the field will be displayed and validated.
    "single_checkbox" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type EnumeratedFieldOption record {
    # The order the choices will be displayed in.
    int:Signed32 displayOrder;
    # 
    string description?;
    # The visible label for this choice.
    string label;
    # The value which will be submitted if this choice is selected.
    string value;
};

# What should happen after the customer submits the form.
public type FormPostSubmitAction record {
    # The action to take after submit. The default action is displaying a thank you message.
    "thank_you"|"redirect_url" 'type;
    # The thank you text or the page to redirect to.
    string value;
};

public type HubSpotFormDefinitionPatchRequest record {
    # The fields in the form, grouped in rows.
    FieldGroup[] fieldGroups?;
    # Whether this form is archived.
    boolean archived?;
    HubSpotFormConfiguration configuration?;
    # The name of the form. Expected to be unique for a hub.
    string name?;
    LegalConsentOptionsNone|LegalConsentOptionsLegitimateInterest|LegalConsentOptionsExplicitConsentToProcess|LegalConsentOptionsImplicitConsentToProcess legalConsentOptions?;
    FormDisplayOptions displayOptions?;
};

# Describes how an email address should be validated.
public type EmailFieldValidation record {
    # Whether to block the free email providers.
    boolean useDefaultBlockList;
    # A list of email domains to block.
    string[] blockedEmailDomains;
};

# A form field used for collecting a phone number.
public type PhoneField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # Whether to display a country code drop down next to the phone field.
    boolean useCountryCodeSelect;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "phone" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
    PhoneFieldValidation validation;
};

# A form field consisting of a single-line text box.
public type SingleLineTextField record {
    # A unique ID for this field's CRM object type. For example a CONTACT field will have the object type ID 0-1.
    string objectTypeId;
    # Whether a field should be hidden or not. Hidden fields won't appear on the form, but can be used to pass a value to a property without requiring the customer to fill it in.
    boolean hidden;
    # The value filled in by default. This value will be submitted unless the customer modifies it.
    string defaultValue?;
    # The identifier of the field. In combination with the object type ID, it must be unique.
    string name;
    # Additional text helping the customer to complete the field.
    string description?;
    # A list of other fields to make visible based on the value filled in for this field.
    DependentField[] dependentFields;
    # The main label for the form field.
    string label;
    # The prompt text showing when the field isn't filled in.
    string placeholder?;
    # Determines how the field will be displayed and validated.
    "single_line_text" fieldType;
    # Whether a value for this field is required when submitting the form.
    boolean required;
};

public type LifecycleStage record {
    # The objectTypeId for both contact and company
    string objectTypeId;
    # The internal name of the contact's lifecycle stage set when submitting a form
    string value;
};

public type NextPage record {
    # 
    string link?;
    # 
    string after;
};

# Provides API key configurations needed when communicating with a remote HTTP endpoint.
public type ApiKeysConfig record {|
    string private\-app\-legacy;
|};