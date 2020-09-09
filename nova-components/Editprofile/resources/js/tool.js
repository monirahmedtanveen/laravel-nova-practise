Nova.booting((Vue, router, store) => {
  router.addRoutes([
    {
      name: 'editprofile',
      path: '/editprofile',
      component: require('./components/Tool'),
    },
  ])
})
