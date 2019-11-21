# babette example 8: Strict clock with a known clock rate

library(babette)

# Create a FASTA file
fasta_filename <- "primates.fas"
save_nexus_as_fasta(
  nexus_filename = beastier::get_beast2_example_filename("Primates.nex"),
  fasta_filename = fasta_filename
)

inference_results <- bbt_run(
  fasta_filename = fasta_filename,
  clock_model = create_strict_clock_model(
    clock_rate_param = create_clock_rate_param(value = 0.5)
  ) 
)

png("result.png", width = 600, height = 600)
plot_densitree(inference_results$primates_trees, alpha = 1.0)
dev.off()
