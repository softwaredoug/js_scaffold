describe('Angular Hello World Test', function() {

  beforeEach(function() {
    browser().navigateTo('../index.html');
  });

  it ('should change the binding when user enters text', function() {
    expect(binding('name')).toEqual('World');
    input('name').ender('angular');
    expect(binding('name')).toEqual('angular');
  });
});
