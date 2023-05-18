locals {
  answers = merge(
    var.answer_1 != null ? { answer_1 = var.answer_1 } : {},
    var.answer_2 != null ? { answer_2 = var.answer_2 } : {},
    var.answer_3 != null ? { answer_3 = var.answer_3 } : {},
    var.answer_4 != null ? { answer_4 = var.answer_4 } : {},
    var.answer_5 != null ? { answer_5 = var.answer_5 } : {},
  )
}

output "answers" {
  value = local.answers
}
