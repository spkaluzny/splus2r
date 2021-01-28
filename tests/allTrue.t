# example loop testing using allTrue

{ # This should pass
  allTrue(TRUE,
	  all.equal(3, 2+1))
}

{ # This should fail
  allTrue(TRUE,
	  all.equal(3, 2+4))
}
