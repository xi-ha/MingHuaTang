import http from '@/utils/request'

// 父级导航分类
export const getNavDataAssort = async data => {
  const params = data
  return await http.get('/navDataAssort', { params })
}
// 子级数据分类
export const getNavChildAssort = async data => {
  const params = data
  return await http.get('/navChildAssort', { params })
}
export const tempChange = async data => {
  const params = data
  return await http.get('/tempChange', { params })
}
