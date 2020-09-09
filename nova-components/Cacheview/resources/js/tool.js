Nova.booting((Vue, router, store) => {
  router.addRoutes([
    {
      name: 'cacheview',
      path: '/cacheview',
      component: require('./components/Tool'),
    },
  ])
})
