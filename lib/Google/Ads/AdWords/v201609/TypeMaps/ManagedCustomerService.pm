
package Google::Ads::AdWords::v201609::TypeMaps::ManagedCustomerService;
use strict;
use warnings;

our $typemap_1 = {
               'getResponse/rval/entries/accountLabels/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'getPendingInvitationsResponse/rval/manager/excludeHiddenAccounts' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'get/serviceSelector/fields' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabelResponse/rval' => 'Google::Ads::AdWords::v201609::ManagedCustomerLabelReturnValue',
               'getResponse/rval/links/clientCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/predicates' => 'Google::Ads::AdWords::v201609::Predicate',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations/operand' => 'Google::Ads::AdWords::v201609::ManagedCustomerLink',
               'getResponse/rval/links' => 'Google::Ads::AdWords::v201609::ManagedCustomerLink',
               'getResponse/rval/links/isHidden' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'mutateLink/operations' => 'Google::Ads::AdWords::v201609::LinkOperation',
               'mutateLink/operations/operand/isHidden' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'ApiExceptionFault/errors/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/accountLabels/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateResponse/rval/value/accountLabels/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutate/operations/Operation.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval' => 'Google::Ads::AdWords::v201609::ManagedCustomerPage',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'ApiExceptionFault/errors/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabelResponse/rval/value/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail' => 'Google::Ads::AdWords::FaultDetail',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]' => 'Google::Ads::AdWords::v201609::IdError',
               'get/serviceSelector/paging' => 'Google::Ads::AdWords::v201609::Paging',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/dateRange/min' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/canManageClients' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/reason' => 'Google::Ads::AdWords::v201609::RequiredError::Reason',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/reason' => 'Google::Ads::AdWords::v201609::AuthenticationError::Reason',
               'mutate/operations/operand/accountLabels/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse/rval/links/pendingDescriptiveName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval/links/linkStatus' => 'Google::Ads::AdWords::v201609::LinkStatus',
               'Fault/detail/ApiExceptionFault/errors[NullError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/message' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse/rval/links' => 'Google::Ads::AdWords::v201609::ManagedCustomerLink',
               'mutateLabelResponse/rval/value/labelId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]' => 'Google::Ads::AdWords::v201609::RejectedError',
               'mutateLabelResponse/rval/value' => 'Google::Ads::AdWords::v201609::ManagedCustomerLabel',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/canManageClients' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'mutateLabel/operations/operand' => 'Google::Ads::AdWords::v201609::ManagedCustomerLabel',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]' => 'Google::Ads::AdWords::v201609::AuthenticationError',
               'getPendingInvitationsResponse/rval/manager/currencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/testAccount' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'getResponse/rval/entries/currencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault' => 'Google::Ads::AdWords::v201609::ApiException',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/reason' => 'Google::Ads::AdWords::v201609::ReadOnlyError::Reason',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/reason' => 'Google::Ads::AdWords::v201609::OperatorError::Reason',
               'mutate/operations/operand/accountLabels/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/rateName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval/links/isHidden' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/reason' => 'Google::Ads::AdWords::v201609::NotEmptyError::Reason',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/client/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/reason' => 'Google::Ads::AdWords::v201609::InternalApiError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]' => 'Google::Ads::AdWords::v201609::ClientTermsError',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations/Operation.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]' => 'Google::Ads::AdWords::v201609::StringLengthError',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/reason' => 'Google::Ads::AdWords::v201609::AuthorizationError::Reason',
               'mutate/operations/operand/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval' => 'Google::Ads::AdWords::v201609::MutateManagerResults',
               'getResponse/rval/entries/accountLabels' => 'Google::Ads::AdWords::v201609::AccountLabel',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/accountLabels' => 'Google::Ads::AdWords::v201609::AccountLabel',
               'get/serviceSelector/ordering' => 'Google::Ads::AdWords::v201609::OrderBy',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/currencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/errors/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLink/operations/operand/clientCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateLink/operations/operator' => 'Google::Ads::AdWords::v201609::Operator',
               'mutateLink/operations/operand/linkStatus' => 'Google::Ads::AdWords::v201609::LinkStatus',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/reason' => 'Google::Ads::AdWords::v201609::RateExceededError::Reason',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]' => 'Google::Ads::AdWords::v201609::DatabaseError',
               'mutateResponse/rval/value/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'getResponse/rval/entries/accountLabels/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse/rval' => 'Google::Ads::AdWords::v201609::MutateLinkResults',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse/rval/links/linkStatus' => 'Google::Ads::AdWords::v201609::LinkStatus',
               'getResponse/rval/Page.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::get',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/excludeHiddenAccounts' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DateError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateLinkResponse',
               'getPendingInvitationsResponse/rval/manager/accountLabels/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLink/operations/operand/managerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutate/operations/operator' => 'Google::Ads::AdWords::v201609::Operator',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]' => 'Google::Ads::AdWords::v201609::DistinctError',
               'getResponse/rval/entries/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/creationDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/errors/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]' => 'Google::Ads::AdWords::v201609::QuotaCheckError',
               'mutateLabel/operations/Operation.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/reason' => 'Google::Ads::AdWords::v201609::StringFormatError::Reason',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DateError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitations/selector/managerCustomerIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'getPendingInvitationsResponse/rval/manager/dateTimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/expirationDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries' => 'Google::Ads::AdWords::v201609::ManagedCustomer',
               'Fault/detail/ApiExceptionFault/message' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[DateError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/canManageClients' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[DateError]' => 'Google::Ads::AdWords::v201609::DateError',
               'mutateResponse/rval/value/currencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval/links/managerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/rateScope' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabel/operations/operand/labelId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateLinkResponse/rval/links/clientCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateManager/operations/operator' => 'Google::Ads::AdWords::v201609::Operator',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]' => 'Google::Ads::AdWords::v201609::StringFormatError',
               'Fault/detail/ApiExceptionFault/ApplicationException.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/ordering/sortOrder' => 'Google::Ads::AdWords::v201609::SortOrder',
               'mutateLink' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateLink',
               'get/serviceSelector/predicates/values' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabel' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateLabel',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/reason' => 'Google::Ads::AdWords::v201609::DistinctError::Reason',
               'getPendingInvitationsResponse/rval/manager' => 'Google::Ads::AdWords::v201609::ManagedCustomer',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/reason' => 'Google::Ads::AdWords::v201609::StringLengthError::Reason',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/accountLabels/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/links/linkStatus' => 'Google::Ads::AdWords::v201609::LinkStatus',
               'get/serviceSelector/paging/numberResults' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]' => 'Google::Ads::AdWords::v201609::OperationAccessDenied',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/ApplicationException.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/client/accountLabels/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/reason' => 'Google::Ads::AdWords::v201609::ManagedCustomerServiceError::Reason',
               'mutate/operations' => 'Google::Ads::AdWords::v201609::ManagedCustomerOperation',
               'mutate/operations/operand/excludeHiddenAccounts' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'get/serviceSelector' => 'Google::Ads::AdWords::v201609::Selector',
               'mutateResponse/rval/value' => 'Google::Ads::AdWords::v201609::ManagedCustomer',
               'getPendingInvitationsResponse/rval/client/testAccount' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateManager',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitations/selector' => 'Google::Ads::AdWords::v201609::PendingInvitationSelector',
               'getResponse/rval/entries/excludeHiddenAccounts' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'getResponse/rval/entries/dateTimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations/operand/clientCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/testAccount' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/retryAfterSeconds' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'mutateResponse/rval/value/canManageClients' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'mutate/operations/operand/testAccount' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors' => 'Google::Ads::AdWords::v201609::ApiError',
               'Fault/detail/ApiExceptionFault/errors[RangeError]' => 'Google::Ads::AdWords::v201609::RangeError',
               'mutateLink/operations/operand/pendingDescriptiveName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitations' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::getPendingInvitations',
               'mutate/operations/operand' => 'Google::Ads::AdWords::v201609::ManagedCustomer',
               'mutateResponse/rval' => 'Google::Ads::AdWords::v201609::ManagedCustomerReturnValue',
               'getPendingInvitationsResponse/rval/client/canManageClients' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'get/serviceSelector/ordering/field' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/reason' => 'Google::Ads::AdWords::v201609::SizeLimitError::Reason',
               'getPendingInvitationsResponse/rval/client/currencyCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval/links' => 'Google::Ads::AdWords::v201609::ManagedCustomerLink',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/reason' => 'Google::Ads::AdWords::v201609::DatabaseError::Reason',
               'getResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::getResponse',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/customerIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateLabel/operations/operator' => 'Google::Ads::AdWords::v201609::Operator',
               'get/serviceSelector/paging/startIndex' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault' => 'Google::Ads::AdWords::v201609::ApiException',
               'getPendingInvitationsResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::getPendingInvitationsResponse',
               'getResponse/rval/links/pendingDescriptiveName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/accountLabels' => 'Google::Ads::AdWords::v201609::AccountLabel',
               'Fault/detail/ApiExceptionFault/errors[DateError]/reason' => 'Google::Ads::AdWords::v201609::DateError::Reason',
               'mutateManagerResponse/rval/links/clientCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/client/excludeHiddenAccounts' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]' => 'Google::Ads::AdWords::v201609::NotEmptyError',
               'getResponse/rval/totalNumEntries' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[DateError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateResponse',
               'get/serviceSelector/predicates/operator' => 'Google::Ads::AdWords::v201609::Predicate::Operator',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]' => 'Google::Ads::AdWords::v201609::RateExceededError',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateManagerResponse',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]' => 'Google::Ads::AdWords::v201609::ManagedCustomerServiceError',
               'getPendingInvitationsResponse/rval/client' => 'Google::Ads::AdWords::v201609::ManagedCustomer',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/reason' => 'Google::Ads::AdWords::v201609::RangeError::Reason',
               'mutateLinkResponse/rval/links/isHidden' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'get/serviceSelector/predicates/field' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/dateTimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLink/operations/operand' => 'Google::Ads::AdWords::v201609::ManagedCustomerLink',
               'mutateManager/operations/operand/linkStatus' => 'Google::Ads::AdWords::v201609::LinkStatus',
               'getPendingInvitationsResponse/rval/client/accountLabels/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/dateTimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/client/dateTimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/reason' => 'Google::Ads::AdWords::v201609::SelectorError::Reason',
               'mutateManager/operations/operand/pendingDescriptiveName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabel/operations' => 'Google::Ads::AdWords::v201609::ManagedCustomerLabelOperation',
               'get/serviceSelector/dateRange' => 'Google::Ads::AdWords::v201609::DateRange',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations/operand/managerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations/oldManagerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]' => 'Google::Ads::AdWords::v201609::RequestError',
               'Fault/detail/ApiExceptionFault/errors[IdError]/reason' => 'Google::Ads::AdWords::v201609::IdError::Reason',
               'mutateManager/operations/operand/isHidden' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'mutate/operations/operand/accountLabels' => 'Google::Ads::AdWords::v201609::AccountLabel',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/reason' => 'Google::Ads::AdWords::v201609::ClientTermsError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]' => 'Google::Ads::AdWords::v201609::ReadOnlyError',
               'mutateLabel/operations/operand/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'ApiExceptionFault/errors' => 'Google::Ads::AdWords::v201609::ApiError',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/reason' => 'Google::Ads::AdWords::v201609::OperationAccessDenied::Reason',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]' => 'Google::Ads::AdWords::v201609::RequiredError',
               'getPendingInvitations/selector/clientCustomerIds' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/dateRange/max' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/manager/testAccount' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]' => 'Google::Ads::AdWords::v201609::SizeLimitError',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/reason' => 'Google::Ads::AdWords::v201609::RejectedError::Reason',
               'mutateLink/operations/Operation.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLinkResponse/rval/links/managerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]' => 'Google::Ads::AdWords::v201609::InternalApiError',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]' => 'Google::Ads::AdWords::v201609::SelectorError',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateLabelResponse' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutateLabelResponse',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/links/managerCustomerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]' => 'Google::Ads::AdWords::v201609::AuthorizationError',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/reason' => 'Google::Ads::AdWords::v201609::RequestError::Reason',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]' => 'Google::Ads::AdWords::v201609::OperatorError',
               'getPendingInvitationsResponse/rval/client/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManager/operations' => 'Google::Ads::AdWords::v201609::MoveOperation',
               'getPendingInvitationsResponse/rval' => 'Google::Ads::AdWords::v201609::PendingInvitation',
               'mutate/operations/operand/customerId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateManagerResponse/rval/links/pendingDescriptiveName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ManagedCustomerServiceError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/reason' => 'Google::Ads::AdWords::v201609::QuotaCheckError::Reason',
               'Fault/detail/ApiExceptionFault/errors[IdError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getPendingInvitationsResponse/rval/client/accountLabels' => 'Google::Ads::AdWords::v201609::AccountLabel',
               'Fault/detail/ApiExceptionFault/errors[NullError]' => 'Google::Ads::AdWords::v201609::NullError',
               'mutate' => 'Google::Ads::AdWords::v201609::ManagedCustomerService::mutate',
               'Fault/detail/ApiExceptionFault/errors[NullError]/reason' => 'Google::Ads::AdWords::v201609::NullError::Reason'
             };
;

sub get_class {
  my $name = join '/', @{ $_[1] };
  return $typemap_1->{ $name };
}

sub get_typemap {
    return $typemap_1;
}

1;

__END__

__END__

=pod

=head1 NAME

Google::Ads::AdWords::v201609::TypeMaps::ManagedCustomerService - typemap for ManagedCustomerService

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

