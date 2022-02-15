=begin
Write your code for the 'Protein Translation' exercise in this file. Make the tests in
`protein_translation_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/protein-translation` directory.
=end
class InvalidCodonError < StandardError

end
class Translation
  
  @codon_list = {
    'Methionine' => ['AUG'],
    'Phenylalanine' => ['UUU','UUC'],
    'Leucine' => ['UUA', 'UUG'],
    'Serine' => ['UCU', 'UCC', 'UCA', 'UCG'],
    'Tyrosine' => ['UAU', 'UAC'],
    'Cysteine' => ['UGU', 'UGC'],
    'Tryptophan' => ['UGG'],
    'STOP' => ['UAA', 'UAG', 'UGA']
  }
  def self.of_codon(codon)
    @codon_list.each {
      |rna,cod|
      if cod.include? codon
        return rna
      end
    }
  end
  def self.of_rna(strand)
    res_rna = []
    strand.split("").each_slice(3) {
      |a,b,c|
      @codon_list.each {
      |rna,cod|
      if cod.include? [a,b,c].join
        p 1 if rna == 'STOP'
        res_rna += [rna]
      end
    } 
    }
    return res_rna.uniq
  end
end 


strand = 'AUGUUUUGG'
expected = %w[Methionine Phenylalanine Tryptophan]
Translation.of_rna(strand)