# variables.tf
# Define variables for word categories and descriptions.

variable "words" {
  description = "A word pool to use for Mad Libs"
  type        = map(list(string))
  default = {
    nouns      = ["army", "panther", "walnuts", "sandwich", "Zeus", "banana", "cat", "jellyfish", "jigsaw", "violin", "milk", "sun"]
    adjectives = ["bitter", "sticky", "thundering", "abundant", "chubby", "grumpy"]
    verbs      = ["run", "dance", "love", "respect", "kicked", "baked"]
    adverbs    = ["delicately", "beautifully", "quickly", "truthfully", "wearily"]
    numbers    = [42, 27, 101, 73, -5, 0]
  }
}
