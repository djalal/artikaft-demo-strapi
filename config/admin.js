module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'ead375e23e33d1d476991129cbe0c00b'),
  },
});
