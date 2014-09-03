use(function() {
    log.error('Hello world: I am from ' + currentPage.getName());
    return {
		root: currentPage.getAbsoluteParent(2)
	};
});