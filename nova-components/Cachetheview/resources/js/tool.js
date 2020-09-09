Nova.booting((Vue, router, store) => {
  router.addRoutes([
    {
      name: 'cachetheview',
      path: '/cachetheview',
      component: require('./components/Tool'),
    },
  ])
})
