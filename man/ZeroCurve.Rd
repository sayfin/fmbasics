% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/zero-curve-class.R
\name{ZeroCurve}
\alias{ZeroCurve}
\title{ZeroCurve class}
\usage{
ZeroCurve(discount_factors, reference_date, interpolation)
}
\arguments{
\item{discount_factors}{a \code{\link{DiscountFactor}} object. These are converted to
continuously compounded zero coupon interest rates with an \code{act/365} day
basis for internal storage purposes}

\item{reference_date}{a \code{Date} object}

\item{interpolation}{an \code{\link{Interpolation}} object}
}
\value{
a \code{ZeroCurve} object
}
\description{
A class that defines the bare bones of a zero-coupon yield curve pricing
structure.
}
\details{
A term structure of interest rates (or yield curve) is a curve showing
several yields or interest rates across different contract lengths (2 month,
2 year, 20 year, etc...) for a similar debt contract. The curve shows the
relation between the (level of) interest rate (or cost of borrowing) and the
time to maturity, known as the "term", of the debt for a given borrower in a
given currency. For example, the U.S. dollar interest rates paid on U.S.
Treasury securities for various maturities are closely watched by many
traders, and are commonly plotted on a graph. More formal mathematical
descriptions of this relation are often called the term structure of interest
rates. When the effect of coupons on yields are stripped away, one has a
zero-coupon yield curve.

The following interpolation schemes are supported by \code{ZeroCurve}:
\code{ConstantInterpolation}, \code{LinearInterpolation}, \code{LogDFInterpolation} and
\code{CubicInterpolation}. Points outside the calibration region use constant
extrapolation on the zero rate.
}
\examples{
build_zero_curve()
}
\seealso{
\link{Interpolation}
}
