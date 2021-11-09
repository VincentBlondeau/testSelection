accessing
jsonWithRepos
	^ '{
	"userId" : "toto",
	"eclipseProjects" : [
		{
			"name" : "crf-fra-wod-admin",
			"executions" : [
				{
					"testClasses" : [
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS001",
							"duration" : 29.381,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountGreaterThenLimit",
									"duration" : 23.131
								},
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountLessThenLimit",
									"duration" : 0.582
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeLessThenActivationLimit",
									"duration" : 0.499
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeGreaterThenLimit",
									"duration" : 0.519
								},
								{
									"status" : "FAIL",
									"name" : "testCampUsingIncorrectTIM0001Param",
									"duration" : 0.35
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingIncorrectTIM0002Param",
									"duration" : 0.489
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeBAS0012",
									"duration" : 0.495
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS001",
									"duration" : 0.498
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS0013",
									"duration" : 0.473
								},
								{
									"status" : "PASS",
									"name" : "testCampWithWrongCode",
									"duration" : 0.471
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeBeetwenLimits",
									"duration" : 0.451
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingCorrectTIM0001Param",
									"duration" : 0.422
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingCorrectTIM0002Param",
									"duration" : 0.448
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestCheckoutFEE003",
							"duration" : 0.487,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisEnDessous20E",
									"duration" : 0.479
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS002",
							"duration" : 4.068,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountGreaterThenLimit",
									"duration" : 0.47
								},
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountLessThenLimit",
									"duration" : 0.483
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeLessThenActivationLimit",
									"duration" : 0.425
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeGreaterThenLimit",
									"duration" : 0.423
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeBAS0012",
									"duration" : 0.431
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS001",
									"duration" : 0.465
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS0013",
									"duration" : 0.442
								},
								{
									"status" : "PASS",
									"name" : "testCampWithWrongCode",
									"duration" : 0.461
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeBeetwenLimits",
									"duration" : 0.456
								},
								{
									"status" : "SKIPPED",
									"name" : "testCampWithCodeBASWithTim003",
									"duration" : -1.0
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT013PDT014",
							"duration" : 1.772,
							"testMethods" : [
								{
									"status" : "ERROR",
									"name" : "testCumulRemiseImmediateEtRemiseDifferee",
									"duration" : 0.853
								},
								{
									"status" : "ERROR",
									"name" : "testManagementPriorityDiscounts_RI_RD_RdFidMarket_RdOffrePass",
									"duration" : 0.914
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestCheckoutFEE002",
							"duration" : 3.512,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisAvecMissageIncitationFAILURE_CASE_DISCOUNT_NEAR_AMOUNT",
									"duration" : 0.488
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisAvecRemiseEnDessous20E",
									"duration" : 0.452
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisAvecRemiseEntre20E_30E",
									"duration" : 0.419
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisCampagneCodePromoErrone",
									"duration" : 0.415
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisApartirDe30E_SansCodeCoupon",
									"duration" : 0.429
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisApartirDe30E",
									"duration" : 0.459
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisAvecRemiseEnDessous20E_SansCodeCoupon",
									"duration" : 0.439
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnValeurSurTypeDeFraisAvecRemiseEntre20E_30E_SansCodeCoupon",
									"duration" : 0.404
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestCheckoutFEE001",
							"duration" : 2.9539999999999997,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEnDessous20E",
									"duration" : 0.428
								},
								{
									"status" : "FAIL",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecMissageIncitationFAILURE_CASE_DISCOUNT_NEAR_AMOUNT",
									"duration" : 0.417
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEntre20E_30E",
									"duration" : 0.429
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisCampagneCodePromoErrone",
									"duration" : 0.414
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisApartirDe30E_SansCodeCoupon",
									"duration" : 0.431
								},
								{
									"status" : "SKIPPED",
									"name" : "testRemiseEnPercentSurTypeDeFraisApartirDe30E",
									"duration" : -1.0
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEnDessous20E_SansCodeCoupon",
									"duration" : 0.405
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEntre20E_30E_SansCodeCoupon",
									"duration" : 0.42
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT013PDV001",
							"duration" : 1.104,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10PercentWithOneProduct_TargetMagasin_ActionDone",
									"duration" : 0.531
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10PercentWithOneProduct_TargetService_NoActionDone",
									"duration" : 0.568
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS003",
							"duration" : 1.767,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testWithoutCardLowAmount",
									"duration" : 0.433
								},
								{
									"status" : "FAIL",
									"name" : "testUsedPassCard",
									"duration" : 0.418
								},
								{
									"status" : "PASS",
									"name" : "testWithoutCard",
									"duration" : 0.48
								},
								{
									"status" : "FAIL",
									"name" : "testUsedCard",
									"duration" : 0.426
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "migration.BatchRefractorCampaignsTest",
							"duration" : 0.004,
							"testMethods" : [
								{
									"status" : "SKIPPED",
									"name" : "testMigration",
									"duration" : -1.0
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.ordercosts.TestTemplatteOC001CT001",
							"duration" : 0.54,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "test",
									"duration" : 0.536
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.ordercosts.TestTemplatteOC001CT002",
							"duration" : 0.835,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "test",
									"duration" : 0.831
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.category.TestTemplatePC0001",
							"duration" : 0.841,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testQteCategoryLessThenLimit",
									"duration" : 0.422
								},
								{
									"status" : "PASS",
									"name" : "testQteCategoryGreaterThenLimit",
									"duration" : 0.416
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.productcheckout.TestBaseProductCheckout",
							"duration" : 0.898,
							"testMethods" : [
								{
									"status" : "ERROR",
									"name" : "testPluralityBaseProductAndCheckout",
									"duration" : 0.895
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.dddiberte.TestTemplate3D0001",
							"duration" : 3.182,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithAmountLessThenMin",
									"duration" : 0.577
								},
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithAmountGreaterThenMin",
									"duration" : 0.533
								},
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithLastOrderGreaterThenMax",
									"duration" : 0.507
								},
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithLastOrderLessThenMaxLessThenLastOrder",
									"duration" : 0.524
								},
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithLastOrderLessThenMaxGreaterThenLastOrder",
									"duration" : 0.522
								},
								{
									"status" : "PASS",
									"name" : "test3DLibertyWithoutClient",
									"duration" : 0.514
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT014",
							"duration" : 6.179,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_10Percent_PrizePools",
									"duration" : 0.544
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_50Cent_PrizePools",
									"duration" : 0.512
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_100Percent_PrizePools",
									"duration" : 0.549
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_OneItem_Euro_FidMarket",
									"duration" : 0.542
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_Items_Percent_FidMarket",
									"duration" : 0.531
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_Items_Euro_FidMarket",
									"duration" : 0.555
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItem_MULTIPLE_RD",
									"duration" : 0.766
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_OneItem_Percent_FidMarket",
									"duration" : 0.522
								},
								{
									"status" : "PASS",
									"name" : "testaddBalanceBasketItem_OneItem_Percent_FidMarket_SELECT_RAY",
									"duration" : 0.545
								},
								{
									"status" : "PASS",
									"name" : "test_RD_OFFRE_PASS",
									"duration" : 0.568
								},
								{
									"status" : "PASS",
									"name" : "testDisplayMessage_RD_OFFRE_PASS",
									"duration" : 0.539
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT013",
							"duration" : 4.946,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValueInEuroWithOneProduct",
									"duration" : 0.53
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItem_MULTIPLE_RI",
									"duration" : 0.737
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10Percent_With_1_Product",
									"duration" : 0.518
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_2Percent_With_2_Product",
									"duration" : 0.516
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10Percent_Lot_With_3_Product",
									"duration" : 0.52
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_2Percent_Lot_With_3_Product",
									"duration" : 0.523
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_With_2_Product_OfferSecondProduct",
									"duration" : 0.517
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10Percent_With_3_Product_OfferThirdProduct",
									"duration" : 0.558
								},
								{
									"status" : "PASS",
									"name" : "testDiscountBasketItemValue_10Percent_ForFirstProduct_With_2_ProductInTheBasket",
									"duration" : 0.521
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS001",
							"duration" : 29.381,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountGreaterThenLimit",
									"duration" : 23.131
								},
								{
									"status" : "PASS",
									"name" : "testCampWithUsedCodeAmountLessThenLimit",
									"duration" : 0.582
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeLessThenActivationLimit",
									"duration" : 0.499
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeGreaterThenLimit",
									"duration" : 0.519
								},
								{
									"status" : "FAIL",
									"name" : "testCampUsingIncorrectTIM0001Param",
									"duration" : 0.35
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingIncorrectTIM0002Param",
									"duration" : 0.489
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeBAS0012",
									"duration" : 0.495
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS001",
									"duration" : 0.498
								},
								{
									"status" : "PASS",
									"name" : "testCampWithCodeActionBAS0013",
									"duration" : 0.473
								},
								{
									"status" : "PASS",
									"name" : "testCampWithWrongCode",
									"duration" : 0.471
								},
								{
									"status" : "PASS",
									"name" : "testCampWithoutCodeBeetwenLimits",
									"duration" : 0.451
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingCorrectTIM0001Param",
									"duration" : 0.422
								},
								{
									"status" : "PASS",
									"name" : "testCampUsingCorrectTIM0002Param",
									"duration" : 0.448
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestCheckoutFEE001",
							"duration" : 2.9539999999999997,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEnDessous20E",
									"duration" : 0.428
								},
								{
									"status" : "FAIL",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecMissageIncitationFAILURE_CASE_DISCOUNT_NEAR_AMOUNT",
									"duration" : 0.417
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEntre20E_30E",
									"duration" : 0.429
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisCampagneCodePromoErrone",
									"duration" : 0.414
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisApartirDe30E_SansCodeCoupon",
									"duration" : 0.431
								},
								{
									"status" : "SKIPPED",
									"name" : "testRemiseEnPercentSurTypeDeFraisApartirDe30E",
									"duration" : -1.0
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEnDessous20E_SansCodeCoupon",
									"duration" : 0.405
								},
								{
									"status" : "PASS",
									"name" : "testRemiseEnPercentSurTypeDeFraisAvecRemiseEntre20E_30E_SansCodeCoupon",
									"duration" : 0.42
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS003",
							"duration" : 1.767,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testWithoutCardLowAmount",
									"duration" : 0.433
								},
								{
									"status" : "FAIL",
									"name" : "testUsedPassCard",
									"duration" : 0.418
								},
								{
									"status" : "PASS",
									"name" : "testWithoutCard",
									"duration" : 0.48
								},
								{
									"status" : "FAIL",
									"name" : "testUsedCard",
									"duration" : 0.426
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.checkout.TestTemplateBAS003",
							"duration" : 1.767,
							"testMethods" : [
								{
									"status" : "PASS",
									"name" : "testWithoutCardLowAmount",
									"duration" : 0.433
								},
								{
									"status" : "FAIL",
									"name" : "testUsedPassCard",
									"duration" : 0.418
								},
								{
									"status" : "PASS",
									"name" : "testWithoutCard",
									"duration" : 0.48
								},
								{
									"status" : "FAIL",
									"name" : "testUsedCard",
									"duration" : 0.426
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT013PDT014",
							"duration" : 1.772,
							"testMethods" : [
								{
									"status" : "ERROR",
									"name" : "testCumulRemiseImmediateEtRemiseDifferee",
									"duration" : 0.853
								},
								{
									"status" : "ERROR",
									"name" : "testManagementPriorityDiscounts_RI_RD_RdFidMarket_RdOffrePass",
									"duration" : 0.914
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.product.TestTemplatePDT013PDT014",
							"duration" : 1.772,
							"testMethods" : [
								{
									"status" : "ERROR",
									"name" : "testCumulRemiseImmediateEtRemiseDifferee",
									"duration" : 0.853
								},
								{
									"status" : "ERROR",
									"name" : "testManagementPriorityDiscounts_RI_RD_RdFidMarket_RdOffrePass",
									"duration" : 0.914
								}
							]
						},
						{
							"status" : "PASS",
							"name" : "net.atos.awl.ri.carrefour.fra.engine.compaign.productcheckout.TestBaseProductCheckout",
							"duration" : 0.898,
							"testMethods" : [
								{
									"status" : "ERROR",
									"name" : "testPluralityBaseProductAndCheckout",
									"duration" : 0.895
								}
							]
						}
					],
					"endDate" : "Feb 9, 2016 3:33:34 PM",
					"executionAttributes" : {
						"mavenAttributes" : {
							"org.eclipse.debug.ui.private" : true,
							"org.eclipse.jdt.launching.WORKING_DIRECTORY" : "D:\\carrefourfr\\crf-fra-wod-admin",
							"org.eclipse.debug.core.ATTR_REFRESH_RECURSIVE" : true,
							"M2_GOALS" : "test",
							"org.eclipse.debug.core.ATTR_REFRESH_SCOPE" : "${project}"
						}
					},
					"scmVersion" : "15137",
					"type" : "maven",
					"id" : 5,
					"startDate" : "Feb 9, 2016 3:32:16 PM"
				}
			],
			"repoUrl" : [
				"https://kazan.priv.atos.fr/svn/carrefourfr"
			]
		}
	]
}'