# outputs.tf
# Define outputs to display the shuffled word lists.

output "shuffled_nouns" {
  value = random_shuffle.random_nouns.result
}

output "shuffled_adjectives" {
  value = random_shuffle.random_adjectives.result
}

output "shuffled_verbs" {
  value = random_shuffle.random_verbs.result
}

output "shuffled_adverbs" {
  value = random_shuffle.random_adverbs.result
}

output "shuffled_numbers" {
  value = random_shuffle.random_numbers.result
}
