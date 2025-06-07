if variable::get("layout") == "workspace" {
	file::rename("src", "crates/meow/src");
	file::rename("Cargo.toml", "crates/meow/Cargo.toml");
	file::delete("crates/meow/.keepme");
	file::rename("crates/meow", "crates/" + variable::get("crate_name"));
	file::rename(".template/Cargo.workspace.toml", "Cargo.toml");
}
