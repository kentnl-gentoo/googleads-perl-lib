
package Google::Ads::AdWords::v201607::TypeMaps::ExperimentService;
use strict;
use warnings;

our $typemap_1 = {
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/paging/numberResults' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'getResponse/rval/Page.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]/reason' => 'Google::Ads::AdWords::v201607::BudgetError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/totalNumEntries' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/reason' => 'Google::Ads::AdWords::v201607::NotEmptyError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/status' => 'Google::Ads::AdWords::v201607::ExperimentStatus',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/reason' => 'Google::Ads::AdWords::v201607::RequestError::Reason',
               'Fault/detail/ApiExceptionFault/errors[RangeError]' => 'Google::Ads::AdWords::v201607::RangeError',
               'getResponse/rval/entries/servingStatus' => 'Google::Ads::AdWords::v201607::ExperimentServingStatus',
               'mutateResponse/rval/value/experimentSummaryStats/adGroupCriteriaCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'mutateResponse/rval/value/experimentSummaryStats/adGroupAdsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[DateError]' => 'Google::Ads::AdWords::v201607::DateError',
               'ApiExceptionFault/errors/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operator' => 'Google::Ads::AdWords::v201607::Operator',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]' => 'Google::Ads::AdWords::v201607::NewEntityCreationError',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/dateRange/min' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/lastModifiedDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/errors/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/reason' => 'Google::Ads::AdWords::v201607::NullError::Reason',
               'getResponse/rval/entries/campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AdxError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/experimentSummaryStats' => 'Google::Ads::AdWords::v201607::ExperimentSummaryStats',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]' => 'Google::Ads::AdWords::v201607::StringLengthError',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]' => 'Google::Ads::AdWords::v201607::DistinctError',
               'Fault/detail/ApiExceptionFault/errors[AdxError]' => 'Google::Ads::AdWords::v201607::AdxError',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]' => 'Google::Ads::AdWords::v201607::RequestError',
               'ApiExceptionFault/message' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/retryAfterSeconds' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/dateRange' => 'Google::Ads::AdWords::v201607::DateRange',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]' => 'Google::Ads::AdWords::v201607::IdError',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/reason' => 'Google::Ads::AdWords::v201607::OperationAccessDenied::Reason',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]' => 'Google::Ads::AdWords::v201607::BudgetError',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/lastModifiedDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value' => 'Google::Ads::AdWords::v201607::Experiment',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]' => 'Google::Ads::AdWords::v201607::ClientTermsError',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/reason' => 'Google::Ads::AdWords::v201607::RequiredError::Reason',
               'mutateResponse/rval/value/queryPercentage' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/reason' => 'Google::Ads::AdWords::v201607::SelectorError::Reason',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/errors' => 'Google::Ads::AdWords::v201607::ApiError',
               'getResponse/rval/entries/controlId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/reason' => 'Google::Ads::AdWords::v201607::AuthorizationError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]' => 'Google::Ads::AdWords::v201607::InternalApiError',
               'mutate/operations/operand/endDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/status' => 'Google::Ads::AdWords::v201607::ExperimentStatus',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/reason' => 'Google::Ads::AdWords::v201607::RejectedError::Reason',
               'mutateResponse/rval/ListReturnValue.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/experimentSummaryStats/adGroupsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]/reason' => 'Google::Ads::AdWords::v201607::ExperimentServiceError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]' => 'Google::Ads::AdWords::v201607::RateExceededError',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DateError]/reason' => 'Google::Ads::AdWords::v201607::DateError::Reason',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DateError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AdxError]/reason' => 'Google::Ads::AdWords::v201607::AdxError::Reason',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval' => 'Google::Ads::AdWords::v201607::ExperimentReturnValue',
               'get' => 'Google::Ads::AdWords::v201607::ExperimentService::get',
               'mutate/operations/operand/servingStatus' => 'Google::Ads::AdWords::v201607::ExperimentServingStatus',
               'mutateResponse' => 'Google::Ads::AdWords::v201607::ExperimentService::mutateResponse',
               'Fault/detail/ApiExceptionFault/errors[DateError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]' => 'Google::Ads::AdWords::v201607::DatabaseError',
               'getResponse/rval/entries/queryPercentage' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail' => 'Google::Ads::AdWords::FaultDetail',
               'mutate/operations/operand/experimentSummaryStats' => 'Google::Ads::AdWords::v201607::ExperimentSummaryStats',
               'get/serviceSelector/fields' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/lastModifiedDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/experimentSummaryStats/adGroupAdsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AdxError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector' => 'Google::Ads::AdWords::v201607::Selector',
               'mutateResponse/rval/value/controlId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]' => 'Google::Ads::AdWords::v201607::AuthenticationError',
               'Fault/detail/ApiExceptionFault/errors[DateError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/predicates/values' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/reason' => 'Google::Ads::AdWords::v201607::IdError::Reason',
               'getResponse/rval/entries/experimentSummaryStats/adGroupAdsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'getResponse/rval/entries/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors' => 'Google::Ads::AdWords::v201607::ApiError',
               'mutate/operations/operand/experimentSummaryStats/adGroupCriteriaCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]/reason' => 'Google::Ads::AdWords::v201607::EntityNotFound::Reason',
               'Fault/detail/ApiExceptionFault/errors[AdxError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/startDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'getResponse/rval/entries/endDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/reason' => 'Google::Ads::AdWords::v201607::ClientTermsError::Reason',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/endDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RangeError]/reason' => 'Google::Ads::AdWords::v201607::RangeError::Reason',
               'getResponse/rval/entries/status' => 'Google::Ads::AdWords::v201607::ExperimentStatus',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/reason' => 'Google::Ads::AdWords::v201607::OperatorError::Reason',
               'mutate' => 'Google::Ads::AdWords::v201607::ExperimentService::mutate',
               'Fault/detail/ApiExceptionFault/errors[NullError]' => 'Google::Ads::AdWords::v201607::NullError',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]/reason' => 'Google::Ads::AdWords::v201607::NewEntityCreationError::Reason',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AdxError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/predicates/field' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/reason' => 'Google::Ads::AdWords::v201607::RateExceededError::Reason',
               'ApiExceptionFault' => 'Google::Ads::AdWords::v201607::ApiException',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]' => 'Google::Ads::AdWords::v201607::StringFormatError',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]' => 'Google::Ads::AdWords::v201607::OperationAccessDenied',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[IdError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/predicates/operator' => 'Google::Ads::AdWords::v201607::Predicate::Operator',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]' => 'Google::Ads::AdWords::v201607::SizeLimitError',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/ordering' => 'Google::Ads::AdWords::v201607::OrderBy',
               'mutate/operations/Operation.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse' => 'Google::Ads::AdWords::v201607::ExperimentService::getResponse',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DateError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/startDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]' => 'Google::Ads::AdWords::v201607::ReadOnlyError',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/reason' => 'Google::Ads::AdWords::v201607::InternalApiError::Reason',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/reason' => 'Google::Ads::AdWords::v201607::DatabaseError::Reason',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'ApiExceptionFault/errors/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/id' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]' => 'Google::Ads::AdWords::v201607::RejectedError',
               'Fault/detail/ApiExceptionFault/errors[RequiredError]' => 'Google::Ads::AdWords::v201607::RequiredError',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand/queryPercentage' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ClientTermsError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/reason' => 'Google::Ads::AdWords::v201607::SizeLimitError::Reason',
               'ApiExceptionFault/errors/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries/experimentSummaryStats' => 'Google::Ads::AdWords::v201607::ExperimentSummaryStats',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/rateName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/message' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/rateScope' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault' => 'Google::Ads::AdWords::v201607::ApiException',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/servingStatus' => 'Google::Ads::AdWords::v201607::ExperimentServingStatus',
               'mutate/operations' => 'Google::Ads::AdWords::v201607::ExperimentOperation',
               'Fault/detail/ApiExceptionFault/ApplicationException.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]' => 'Google::Ads::AdWords::v201607::NotEmptyError',
               'mutateResponse/rval/value/experimentSummaryStats/adGroupsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'get/serviceSelector/paging' => 'Google::Ads::AdWords::v201607::Paging',
               'mutate/operations/operand/campaignId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'Fault/detail/ApiExceptionFault/errors[StringFormatError]/reason' => 'Google::Ads::AdWords::v201607::StringFormatError::Reason',
               'Fault/detail/ApiExceptionFault/errors[DatabaseError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/paging/startIndex' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[NewEntityCreationError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[AuthenticationError]/reason' => 'Google::Ads::AdWords::v201607::AuthenticationError::Reason',
               'mutate/operations/operand/controlId' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'getResponse/rval' => 'Google::Ads::AdWords::v201607::ExperimentPage',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/reason' => 'Google::Ads::AdWords::v201607::StringLengthError::Reason',
               'Fault/detail/ApiExceptionFault/errors[RejectedError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[DistinctError]/reason' => 'Google::Ads::AdWords::v201607::DistinctError::Reason',
               'ApiExceptionFault/ApplicationException.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]' => 'Google::Ads::AdWords::v201607::EntityNotFound',
               'Fault/detail/ApiExceptionFault/errors[BudgetError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutateResponse/rval/value/startDateTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperationAccessDenied]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NotEmptyError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]' => 'Google::Ads::AdWords::v201607::QuotaCheckError',
               'Fault/detail/ApiExceptionFault/errors[StringLengthError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/ordering/sortOrder' => 'Google::Ads::AdWords::v201607::SortOrder',
               'Fault/detail/ApiExceptionFault/errors[ExperimentServiceError]' => 'Google::Ads::AdWords::v201607::ExperimentServiceError',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]' => 'Google::Ads::AdWords::v201607::OperatorError',
               'get/serviceSelector/predicates' => 'Google::Ads::AdWords::v201607::Predicate',
               'getResponse/rval/entries/experimentSummaryStats/adGroupsCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[RateExceededError]/fieldPath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'mutate/operations/operand' => 'Google::Ads::AdWords::v201607::Experiment',
               'Fault/detail/ApiExceptionFault/errors[InternalApiError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[NullError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[SizeLimitError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[RequestError]/errorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[OperatorError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/ordering/field' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]/trigger' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getResponse/rval/entries' => 'Google::Ads::AdWords::v201607::Experiment',
               'Fault/detail/ApiExceptionFault/errors[NullError]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get/serviceSelector/dateRange/max' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[QuotaCheckError]/reason' => 'Google::Ads::AdWords::v201607::QuotaCheckError::Reason',
               'Fault/detail/ApiExceptionFault/errors[EntityNotFound]/ApiError.Type' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/detail/ApiExceptionFault/errors[ReadOnlyError]/reason' => 'Google::Ads::AdWords::v201607::ReadOnlyError::Reason',
               'Fault/detail/ApiExceptionFault/errors[AuthorizationError]' => 'Google::Ads::AdWords::v201607::AuthorizationError',
               'getResponse/rval/entries/experimentSummaryStats/adGroupCriteriaCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
               'Fault/detail/ApiExceptionFault/errors[SelectorError]' => 'Google::Ads::AdWords::v201607::SelectorError'
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

Google::Ads::AdWords::v201607::TypeMaps::ExperimentService - typemap for ExperimentService

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut
