# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Cleaning up all the data
Word.delete_all

#Inserting some data
words= Word.create([
                       #first Word
                       {word: 'Armada',
                        meaning: %{A fleet of warships},
                        partofspeech: 'Noun',
                        sentence: %{The president's entourage looked like an armada.},
                        color: ' green',
                        points: 2,
                        price: 2.0
                       },
                       {word: 'Besot',
                        meaning: %{To muddle or stupefy.},
                        partofspeech: 'Noun',
                        sentence: %{My wife was besotted on my appearance.},
                        color: 'Yellow',
                        points: 1,
                        price: 5.20
                       },
                       {word: 'Clamor',
                        meaning: %{A loud outcry.},
                        partofspeech: 'Noun',
                        sentence: %{I ran to end of the street as I heard a clamour.},
                        color: 'Blue',
                        points: 4,
                        price: 3.0
                       },
                       {word: 'Dotty',
                        meaning: %{Having a feeble or unsteady gait.},
                        partofspeech: 'Noun',
                        sentence: %{The singer's voice was very dotty.},
                        color: 'Magenta',
                        points: 7,
                        price: 8.0
                       },
                       {word: 'Harbinger',
                        meaning: %{One that indicates or foreshadows what is to come.},
                        partofspeech: 'Noun',
                        sentence: %{Music is the harbinger of peace.},
                        color: 'Cyan',
                        points: 8,
                        price: 9.0
                       }
                   ]
)

=begin






{"color":"cyan","created_at":"2013-06-28T05:06:05Z","id":5,"meaning":"One that indicates or foreshadows what is to come. ","partofspeech":"Noun","points":34,"price":"87.0","sentence":"Music is the harbinger of peace.","updated_at":"2013-06-28T05:06:05Z","word":"Harbinger"}


=end
