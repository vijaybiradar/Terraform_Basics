# main.tf
# This Terraform configuration generates random words using the random_shuffle resource based on word categories.

# Random Shuffle for Nouns
resource "random_shuffle" "random_nouns" {
  input = var.words["nouns"]
}

# Random Shuffle for Adjectives
resource "random_shuffle" "random_adjectives" {
  input = var.words["adjectives"]
}

# Random Shuffle for Verbs
resource "random_shuffle" "random_verbs" {
  input = var.words["verbs"]
}

# Random Shuffle for Adverbs
resource "random_shuffle" "random_adverbs" {
  input = var.words["adverbs"]
}

# Random Shuffle for Numbers
resource "random_shuffle" "random_numbers" {
  input = var.words["numbers"]
}
