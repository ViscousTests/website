---
backlinks-set: 
categories-set: #{"Investing And Finances"}
---
# Expected Returns for Buying a House

A simpler alternative for a quick calcution is
https://businesscaseguy.com/should-i-invest-in-real-estate-or-stocks/.

For the rent vs buy question, see
https://www.nytimes.com/interactive/2014/upshot/buy-rent-calculator.html.

Looking at list prices for homes can be a strange experience.  To me, a list
price is just a large number that has little or any meaning to the impact
buying that house will have on my finances.  To confidently judge whether a
house I'm interested in buying is actually a good deal, I made the spreadsheet
described here. **The primary goal of the spreadsheet is to translate details
about the house (e.g. it's price) into an expected percentage return that can
be directly compared to other investments.**

Here is the spreadsheet:
https://docs.google.com/spreadsheets/d/11GTEiYBGF1NXaob9DczvUcQyloDVQ-dJfALDsg-L4-U/edit?usp=sharing

On the left side of the spreadsheet are a bunch of blue fields where details
about the house should be filled in.  On the right are shown the results, in
gory detail.

Note that I was looking for live-in multi-plex properties, so the spreadsheet
has features to judge the effect of rent on the ultimate return.

**If you have any questions or** ***especially*** **if you notice errors in the
spreadsheet, please comment on it to let me know.**

## Input Field Descriptions

### House Details

 - **Property Price**: <br/> The price you will be able to buy the property at.
 - **Property Growth Rate**: <br/> One of the most impactful, yet hardest to
   estimate parameters. Some useful estimates can be found on Redfin ([rawer
   data](https://www.redfin.com/news/data-center/),
   [summarized](https://www.redfin.com/us-housing-market)), but you can't
   always use the past to predict the future! I just set a really conservative
   value here and pray.
 - **Property Land Value**: <br/> The value of the land the property sits on.
   This is used to calculate depreciation (since land doesn't depreciate, only
   man made structures do). In you live in the Seattle area, you can find this
   information by searching for the property on
   https://gismaps.kingcounty.gov/parcelviewer2/.
 - **Property Tax Rate**: <br/> Can also be found on a local parcel viewer
   resource, or even on listings.  Taxes collected on properties are public
   record in the US. Using prior year taxes is usually a good way to estimate
   this; I found that the tax appraisals for properties can value them very
   differently than the market does, so multiplying the list price by the tax
   rate to calculate this is not recommended.
 - **Depreciation Period**: <br/> The time after which you can assume (for tax
   purposes) that your property will completely turn to worthless dust. This
   only applies if you are using part of your property for business purposes
   (renting it).
 - **Income Tax Rate**: <br/> The rate at which any rental income will be
   taxed.  Note that I am assuming your income tax rate doesn't change over the
   course of owning the property. Since income taxes on rent are essentially
   deferred due to depreciation and then depreciation recapture on sale, your
   return will be better if your income tax rate is lower when you sell the
   property.
 - **Depreciation Recapture Tax Rate**: <br/> The rate at which depreciation
   recapture income will be taxed.  This is your ordinary income tax rate when
   you sell the property [OR
   25%](https://www.millionacres.com/taxes/depreciation/understanding-depreciation-recapture-when-you-sell-rental-property/#:~:text=That's%20what%20depreciation%20recapture%20does,4797%2C%20Sales%20of%20Business%20Property.),
   whichever is larger.


### Debt

 - **Down Payment**: <br/> How much upfront you will be paying for the house
   (in your own cash).
 - **Years**: <br/> The time after which your mortgage will be fully paid.
 - **Interest Rate**: <br/> Multiplying this percent by the remaining loan
   balance after a given year tells you how much you have to pay your lender
   for the privilege of using their money.


### Goals

 - **Investment Growth Rate**: <br/> How much you expect your other investments
   to grow by yearly on average.  This just color-codes the results (green is
   better than your other investments, red is worse).
 - **Investment Tolerance**: <br/> Results minus this amount from your
   investment growth rate will be colored yellow.
 - **Personal monthly "rent"**: <br/> This quantifies the amount of value you
   personally extract from the home by living in it. This makes comparisons
   between investments more fair, because you can't live in a stock! A good
   ballpark for this number is your current rent, or a rent that you would be
   comfortable paying.
 - **Max Upfront Costs**: <br/> The total maximum amount of money upfront you
   can spend on the house. Used for color coding.
 - **Max Monthly Costs**: <br/> The maximum amount of money you can spend on
   the house per month **on average**. You should always have some buffer,
   since many housing expenses come in large lump payments.  Used for color
   coding.
 - **Portfolio Start Size**: <br/> The amount of money you have in your
   investment portfolio when you buy the home. Used to calculate how much of
   your investment portfolio is made up of by the house
 - **Yearly Investment**: <br/> The amount of money you are investing per year
   into your portfolio.  Used to calculate how much of your investment
   portfolio is made up of by the house


### Income

 - **Rent**: <br/> The amount of rent you expect to earn from tenants living on
   your property.
 - **Percentage Rented**: <br/> The percentage of your house that is considered
   rented. I think you can calculate this using square footage. This determines
   how much of all your expenses you can use to cancel out income taxes as a
   business expense.
 - **Occupancy Rate**: <br/> What percent of the time you expect to have rent
   flowing in.
 - **Rental Growth Rate**: <br/> How much you expect rents to increase by in a
   year.


### Monthly Expenses

Various expenses that need to be paid every month by you on behalf of the whole
house. Notice the tax deduction rate assumes that these services will be used
evenly by you and your tenants.

### Selling Costs

 - **Capital Gains Rate**: <br/> The percentage of {the price you are selling
   the property at minus the amount you bought it for} that you must pay as
   tax.  Up to 250k for single owner or 500k for a joint ownership of capital
   gains can be ignored for a single family home.  In a duplex, this can be
   applied to <Percentage Rented>% of the property, the rest is subject to tax
   (unless you do a 1031 exchange).  See
   https://finance.zacks.com/rental-income-taxed-duplex-7533.html.  Note also
   that if you are using depreciation to offset your income tax while you own
   the property, this **lowers your cost basis** in the house, which increases
   your capital gains tax.  Additionally, this "depreciation recapture" tax is
   taxed at normal income tax rate, since that is what it offset earlier.
 - **Closing Costs**: <br/> The percentage of the selling price you have to pay
   to agents that help you sell the house. You can reduce this greatly by
   selling by owner, but then you might not get the best buyer.


### Upfront Buying Costs

Various expenses and fees that you must pay when you are buying the home up
front.


## Results

 - **Time**: <br/> Year after purchase that you would be selling the house
   (assuming "Months Per Row" is set to 12, the default).
 - **Rental Revenue**: <br/> Total amount of money paid to you by renters in
   that year.
 - **Property Value**: <br/> The amount of money you could sell the property
   for.
 - **Property Gain**: <br/> Amount the property grew in value by in the last
   year.
 - **Net Gain**: <br/> Amount of money you "made" this year via rent and
   property growth.
 - **Property Tax**: <br/> "Rent" you must pay your city/government for owning
   your property.
 - **Mortgage Payment**: <br/> The amount of money that you must pay your
   lender towards your loan.
 - **Interest Paid**: <br/> The amount of money going to your lender that goes
   directly to them as a fee for you using their money.
 - **Principle Paid**: <br/> The amount of money going to your lender that
   effectively purchases part of your property (equity) from them.
 - **Loan Amount Left**: <br/> The amount of your loan left to pay off.
 - **Expenses**: <br/> Total expenses paid from the "Monthly Expenses" input
   section.
 - **Unrecoverable Loss**: <br/> The total amount of money that you spent this
   year that you will never see again :).
 - **Depreciation**: <br/> How much of your property you lost as it crumbled to
   dust (as far as the IRS is concerned).
 - **Total Tax Deductions**: <br/> The total expenses you can deduct as
   business expenses from your taxes.
 - **Taxable Income**: <br/> The income from your property that is taxable as
   ordinary income.
 - **Income Tax Paid**: <br/> The amount of income tax you actually need to pay
   this year because you own your property.
 - **Total Expense**: <br/> The total amount you must pay this year to others.
 - **Cash Flow**: <br/> The total amount paid to you by others minus the total
   amount you must pay to others.
 - **Monthly Cash Flow**: <br/> The last column divided by "Months Per Row".
 - **"Rent"**: <br/> The total amount of value you extract from living in the
   property (see "Goals" input section).
 - **"Rent" Cashflow**: <br/> Cashflow considering the "rent" you are "paying".
 - **Money Put In**: <br/> The total amount of money you have spent on the
   property.
 - **Rest of Portfolio Value**: <br/> The value of your investments, minus the
   house.
 - **Percent of Portfolio**: <br/> The percentage of the portfolio that is made
   up of by the house.
 - **Money Put In w/"Rent"**: <br/> The "Money Put In" column considering the
   "rent" you are "paying".
 - **Cost to Sell**: <br/> The amount of money you need to pay to others when
   selling the house.  This includes paying off the mortgage, paying realtors,
   etc.
 - **Depreciation Recapture**: <br/> The amount of money you have written off
   your taxes so far due to property depreciation - if the property value has
   increased despite this depreciation, you need to pay it back.
 - **Cost Basis**: <br/> The amount you bought the house for plus any
   improvements, adjusted by how much of it you own this year.
 - **Capital Gains**: <br/> How much your property has appreciated since you
   bought it, adjusted for how much of it you own this year.
 - **Total Sale Tax**: <br/> How much in tax you would have to pay if you sold
   the property this year, including capital gains tax and depreciation
   recapture income tax.
 - **Sale Proceeds**: <br/> The amount of money you would end up with in cash
   after the sale of the property this year.
 - **IRR**: <br/> The time-adjusted rate of return you have made on all the
   money you put into the property.
 - **IRR w/"Rent"**: <br/> The time-adjusted rate of return you have made on
   all the money you put into the property, considering also the value you got
   out of it by living in it.  **If this value is less than your expected
   investment growth rate, financially you probably shouldn't buy the house.**
 - **Portfolio Return w/"Rent"**: <br/> The return of your entire portfolio
   including the house, given that you sell the house this year.
 - **Rental Delta**: <br/> To translate the rate of return to a "dollars per
   month" figure, fill in the top cell of this column until the **IRR w/Rent
   Delta** column matches your expected **Investment Growth Rate** for the year
   you are planning to sell at.  This will tell you how much money per month
   you are saving (or losing) per month compared to your **Personal monthly
   "rent"**.