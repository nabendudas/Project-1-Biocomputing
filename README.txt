Project-1-Biocomputing
-------------------------------------------------------------------------------

For this project, I use THAP9 gene. THAP9 is a transposable element-derived gen that encodes the THAP9 protein, which is homologous to the Drosophila P-element transposase and can cut and paste DNA. It enables sequence-specific DNA binding activity and transposase activity.

So inside the Project-1-Biocomputing folder, there are three folders named data, scripts, results. Also one README.txt file is there that contains the information about the project assignment.

Steps:
1. Retrieved THAP9 fasta sequences from NCBI and stored it into data. In case of Mouse and Rat THAP9 gene is not present, so we select THAP1 instead of THAP9. Also in case of Drosophila I select P element structure instead of THAP9.
2. Retrived the coding sequence of THAP9 from NCBI. Then translated first 30 nucleotides using standard genetic code, Next retrived the protein sequence from Uniprot in fasta format. Comapared the both sequences manually using EMBOSS Transeq. Then use Uniprot protein sequence as query for blastp at NCBI. Next retrived top 5 homologous sequences in fasta format. Lastly calculate % of cystine residue. Also found the longest sequence from blastp results and reported its ID and length and calculated amino acid frequencies.
3. Retrived the THAP9 pdb structure from the Alphafold model, because it's not present RCSB PDB database. Extracted Alanine CA coordinates using awk and saved to alanine_info.pdb. Then computed pairwise distances using awk script and store in pairwise_distance.csv.
