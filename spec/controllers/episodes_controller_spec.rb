require 'spec_helper'

describe EpisodesController do
  describe '#report' do
    it 'should create an episode report'
  end

  describe '#show' do
    it 'should render out the show action' do
      episode = mock(Episode, :id => 1)
      comment = mock(Comment)
    end
  end

  describe '#comment' do
  end
end
