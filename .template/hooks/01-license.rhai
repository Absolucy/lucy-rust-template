let license = variable::get("license");

switch license {
	"MIT OR Apache-2.0" => {
		file::rename(".template/licenses/LICENSE-Apache.md", "LICENSE-Apache.md");
		file::rename(".template/licenses/LICENSE-MIT.md", "LICENSE-MIT.md");
	},
	"0BSD" => {
		file::rename(".template/licenses/LICENSE-0BSD.md", "LICENSE.md");
	},
	"MPL-2.0" => {
		file::rename(".template/licenses/LICENSE-MPL.md", "LICENSE.md");
	}
}
