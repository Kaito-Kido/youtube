require 'rails_helper'

RSpec.describe 'Comments', type: :request do
  describe 'POST /create' do
    let(:user) { create(:user) }
    let(:video) { create(:video, user: user) }

    it 'returns http success' do
      sign_in user

      post "/videos/#{video.id}/comments", params: { comment: { content: 'create' } }
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /destroy' do
    let(:user) { create(:user) }
    let(:video) { create(:video, user: user) }
    let(:comment) { create(:comment, video: video, user: user) }

    it 'returns http success' do
      sign_in user

      delete "/videos/#{video.id}/comments/#{comment.id}"
      expect(response).to have_http_status(:ok)
    end
  end

  describe 'PUT /update' do
    let(:user) { create(:user) }
    let(:video) { create(:video, user: user) }
    let(:comment) { create(:comment, video: video, user: user) }

    it 'returns http success' do
      sign_in user

      put "/videos/#{video.id}/comments/#{comment.id}", params: { comment: { content: 'change comment' } }

      expect(response).to have_http_status(:ok)
    end
  end
end
