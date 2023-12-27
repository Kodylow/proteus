use serde::{Deserialize, Serialize};

pub mod register;
pub mod well_known;

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct UserRelays {
    pub pubkey: String,
    pub name: String,
    pub dm_type: String,
    pub relays: Vec<String>,
}
