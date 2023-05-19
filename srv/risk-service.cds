using { riskmanagement as rm } from '../db/schema';

 @path: 'service/risk'
 service RiskService {

//  entity Risks as projection on rm.Risks;
// grant to role
entity Risks @(restrict : [
         {
             grant : [ 'READ'],
             to : [ 'RiskViewer_R' ]
         },
          {
              grant : [ '*' ],
             to : [ 'RiskManager_R' ]
          }
     ]) as projection on rm.Risks;
     annotate Risks with @odata.draft.enabled;
 entity Mitigations as projection on rm.Mitigations;
     annotate Mitigations with @odata.draft.enabled;
 @readonly entity BusinessPartners as projection on rm.BusinessPartners;
 }