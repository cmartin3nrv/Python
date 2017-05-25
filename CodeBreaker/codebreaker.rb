#Codebreaker
class Encryption
  def initialise(shift)
    alphabet_lower = 'abcdefghijklmnopqrstuvwxyz'
    alphabet_upper = alphabet_lower.upcase
    alphabet = alphabet_lower + alphabet_upper
    index = shift % alphabet.size
    encrypted_alphabet = alphabet (index..-1) + alphabet[0...index]
    setup_lookup_tables(alphabet, encrypted_alphabet)
    def setup_lookup_tables(decrypted_alphabet, encrypted_alphabet)
      @encrption_hash = {}
      @decryption_hash = {}
    0.upto(decrypted_alphabet.size) do |index|
      @encryption_hash[decrypted_alphabet[index]] = encrypted_alphabet[index]
      @decryption_hash[encrypted_alphabet[index]] = decrypted_alphabet [index]
  end
     def encrypt(string)
       result = []
       string.each_char do |c|
         if @encryption_hash[c]
           result << @encryption_hash[c]
         else
           result << c
         end
       end
       result.join
     end
    def decrypt(string)
      result = []
      string.each_char do |c|
        if @decryption_hash[c]
          result << @decryption_hash[c]
        else
          result << c
        end
      end
      result.join
    end
  end

class Codebreaker
  COMMANDS = ['e', 'd']
  def get_command
    print "Would you like to encrypt (e) or decrypt (d) a file?"
    @command = gets.chomp.downcase
    if !COMMANDS.include?(@command)
      puts "Unknown command, sorry!"
      return false
    end
    true
  end
  def get_input_file
    print "Enter the name of the input file: "
    @input_file = gets.chomp
    #check whether the file exists
    if !File.exists?(@input_file)
      puts "Can't find the input file, sorry!"
      return false
    end
    true
  end
  def get_output_file
    print "Enter the name of the output file: "
    @output_file = gets.chomp
    if File.exists?(@output_file)
      puts "The output file already exists, can't overwrite"
      return false
    end
    true
  end
  def get_secret
    print "Enter the secret password: "
    @password = gets.chomp
  end
  def process_files
    encoder = Encryption.new(@password.size)
    File.open(@output_file, "w") do |output|
      IO.foreeach(@input_file) do |line|
        converted_line = convert(encoder, line)
        output.puts converted_line
      end
    end
  end
  def convert(encoder, string)
    if @command == 'e'
      encoder.encrypt(string)
    else
      encoder.decrypt(string)
    end
  end
  def initialise
    @input_file = ''
    @output_file = ''
    @password = ''
  end
  def run
    if get_command && get_input_file && get_output_file && get_secret
      process_files
      true
    else
  end
end
#restofcodehere
end

puts "This program will encrypt or decrypt a file of your choice"
puts ""

codebreaker = Codebreaker.new

if codebreaker.run
  puts "All done!"
else
  puts "Didn't work!"
end
end
