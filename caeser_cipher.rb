def caeser_cipher(string, shift)
    alphabet = Array("a"..."z") + Array("A".."Z")
    encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
    string.chars.map { |c| encrypter.fetch(c, c) }.join
end