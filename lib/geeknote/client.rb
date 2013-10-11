module GeekNote
  class Client
    def list_notebooks
      auth_token = "S=s1:U=840c1:E=148e577e596:C=1418dc6b999:P=1cd:A=en-devtoken:V=2:H=f597a57e759dfaba5e319931fcad97a2"

      client = EvernoteOAuth::Client.new(token: auth_token)

      note_store = client.note_store

      notebooks = note_store.listNotebooks
      puts "your note books list ......"
      notebooks.each do |nb|
        puts nb.name
      end
      # note = Evernote::EDAM::Type::Note.new
      # note.title = "hello from Codecademy"
      # note.content = '<?xml version="1.0" encoding="UTF-8"?><!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd"><en-note>Hello Evernote<br/></en-note>'
      # note_store.createNote(note)
    end

    def list_tags

      auth_token = "S=s1:U=840c1:E=148e577e596:C=1418dc6b999:P=1cd:A=en-devtoken:V=2:H=f597a57e759dfaba5e319931fcad97a2"

      client = EvernoteOAuth::Client.new(token: auth_token)

      note_store = client.note_store

      tags = note_store.listTags
      puts "your tags list ......"
      tags.each do |tag|
        puts tag.name
      end
    end
  end
end
