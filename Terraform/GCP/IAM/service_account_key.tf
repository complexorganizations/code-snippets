resource "google_service_account_key" "service_account_key" {
    service_account_id = google_service_account.service_account.name
    public_key_type    = "TYPE_X509_PEM_FILE"
    key_algorithm      = "KEY_ALG_RSA_2048"
}