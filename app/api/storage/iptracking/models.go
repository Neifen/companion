// Package iptracking is for db operations that target the iptracking table
package iptracking

type TrackingContext int

const (
	Verification TrackingContext = iota
	Authentication
	FailedAuthentication
	RequestPasswordReset
	NewUser
	Refresh
)

var trackingContextName = map[TrackingContext]string{
	Verification:         "verif",
	Authentication:       "auth",
	FailedAuthentication: "fail",
	RequestPasswordReset: "reset",
	NewUser:              "newUsr",
	Refresh:              "refresh",
}

func (t TrackingContext) String() string {
	return trackingContextName[t]
}
