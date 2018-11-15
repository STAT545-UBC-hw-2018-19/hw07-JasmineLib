context("Taking the Root of non-numerics")

test_that(" numerical values work.", {
    num_vec <- c(0, -4.6, 3.4)
    expect_identical(root(num_vec,2), num_vec^0.5)
})

test_that("Logicals automatically convert to numeric.", {
    logic_vec <- c(TRUE, TRUE, FALSE)
    expect_identical(root(logic_vec,3), logic_vec^(1/3))
})

test_that("Strings are not accepted as input.", {
    string_vec <- c("TRUE", "string", "abcde")
    expect_error(root(string_vec, 2), "non-numeric argument to binary operator")
})

test_that("input x  is a numerical value.", {
    num_vec <- c(TRUE, -4.6, 3.4)
    x_output = root(num_vec, 2)
    expect_is(x_output, "numeric")
})

