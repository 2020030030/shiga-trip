class Prefecture < ActiveHash::Base
  self.data = [
      {id: 1, name: '大津市'}, {id: 2, name: '草津市'}, {id: 3, name: '守山市'},
      {id: 4, name: '栗東市'}, {id: 5, name: '野洲市'}, {id: 6, name: '甲賀市'},
      {id: 7, name: '湖南市'}, {id: 8, name: '東近江市'}, {id: 9, name: '近江八幡市'},{id: 10, name: '日野町'},
      {id: 11, name: '竜王町'}, {id: 12, name: '彦根市'}, {id: 13, name: '愛荘町'},
      {id: 14, name: '豊郷町'}, {id: 15, name: '甲良町'}, {id: 16, name: '多賀町'},
      {id: 17, name: '米原市'}, {id: 18, name: '長浜市'}, {id: 19, name: '高島市'},
  ]

  include ActiveHash::Associations
  has_many :post_image

end
