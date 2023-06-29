Feature: Bond Transactions

    @Examples("gwen/test_data/test_data.csv")
    Scenario Outline: Successful Buy Bond Order Transactions
        Given I login with "${USERNAME}","${PASSWORD}"
        And @try to remove duplicate session
        When I navigate to "Bonds" order page
        And I create bond order with "${PORTFOLIO}","${INSTRUMENT}","${NOMINAL_PRICE}","${CLIENT_PRICE}","${PHONE}","${INSTRUCTOR}","${CONTACT}" details
        Then the transaction status should be "Order"
        And @finally I logout the session

    # Scenario Outline: Login
    #     Given I login with "${USERNAME}","${PASSWORD}"
    #     And @finally I logout the session

    #     Examples: Data file: "gwen\test_data\test_data.csv"
    #         | USERNAME | PASSWORD |
    #         | wui_rm2  | wui_rm2  |

