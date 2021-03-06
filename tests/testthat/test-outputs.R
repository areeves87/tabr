context("outputs")

x <- p("r a2 c3 f3 d3 a3 f3", "4 8*6") %>% track() %>% score()

test_that("tab and lilypond functions run without error", {
  skip_on_appveyor()
  skip_on_cran()
  expect_is(lilypond(x, "out.ly"), "NULL")
  expect_is(tab(x, "out.pdf"), "NULL")
  expect_is(tab(x, "out.png"), "NULL")
  unlink(c("out.mid", "out.pdf", "out.png"))
})
