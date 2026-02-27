// Package iptracking is for db operations that target the iptracking table
package iptracking

type TrackingContext string

const (
	Verification              TrackingContext = "verif"
	Authentication            TrackingContext = "auth"
	FailedAuthentication      TrackingContext = "fail"
	RequestPasswordReset      TrackingContext = "reset"
	RequestSignupVerification TrackingContext = "signup"
	NewUser                   TrackingContext = "newUsr"
	Refresh                   TrackingContext = "refresh"
)
