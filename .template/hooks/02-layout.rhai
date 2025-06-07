if variable::get("layout") {
	// won't get done automatically as ignore doesn't support wildcards
	switch variable::get("crate_type") {
		"bin" => file::delete("src/lib.rs"),
		"lib" => file::delete("src/main.rs"),
	}

	file::rename("src", "crates/meow/src");
	file::rename("Cargo.toml", "crates/meow/Cargo.toml");
	file::delete("crates/meow/.keepme");
	file::rename("crates/meow", "crates/" + variable::get("crate_name"));
	file::rename(".template/Cargo.workspace.toml", "Cargo.toml");
}
