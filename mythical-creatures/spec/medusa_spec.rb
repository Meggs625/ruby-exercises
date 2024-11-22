require 'rspec'
require './lib/medusa'
require './lib/person'

RSpec.describe Medusa do
  it 'has a name' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.name).to eq('Cassiopeia')
  end

  it 'has no statues when created' do
    medusa = Medusa.new('Cassiopeia')
    expect(medusa.statues).to be_empty
  end

  it 'gains a statue when staring at a person' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    medusa.stare(victim)
    expect(medusa.statues.count).to eq(1)
    expect(medusa.statues.first.name).to eq('Perseus')
    expect(medusa.statues.first).to be_an_instance_of(Person)
  end

  it 'turns a person to stone when staring at them' do
    medusa = Medusa.new('Cassiopeia')
    victim = Person.new('Perseus')

    expect(victim.stoned?).to be false
    medusa.stare(victim)
    expect(victim.stoned?).to be true
  end

  it 'can only have three victims' do
    medusa = Medusa.new("Med")
    victim = Person.new('Percy')
    victim_2 = Person.new('Demeter')
    victim_3 = Person.new ("Fawn")
    victim_4 = Person.new("Charlie")

    medusa.stare(victim)
    medusa.stare(victim_2)
    medusa.stare(victim_3)
    medusa.stare(victim_4)
    expect(medusa.statues.count).to eq(3)
    expect(medusa.statues.first.name).to eq("Demeter")

  end

  it 'if a fourth victim is stoned the first is unstoned' do
    medusa = Medusa.new("Med")
    victim = Person.new('Percy')
    victim_2 = Person.new('Demeter')
    victim_3 = Person.new ("Fawn")
    victim_4 = Person.new("Charlie")

    medusa.stare(victim)
    medusa.stare(victim_2)
    medusa.stare(victim_3)
    medusa.stare(victim_4)
    expect(medusa.statues.count).to eq(3)
    expect(medusa.statues.first.name).to eq("Demeter")
    expect(victim.stoned?).to eq(false)
  end
end
