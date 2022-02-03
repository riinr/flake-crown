{
  description = ''A high level SQLite API for Nim'';
  inputs.src-sqliteral-1_3_0.flake = false;
  inputs.src-sqliteral-1_3_0.type = "github";
  inputs.src-sqliteral-1_3_0.owner = "olliNiinivaara";
  inputs.src-sqliteral-1_3_0.repo = "SQLiteral";
  inputs.src-sqliteral-1_3_0.ref = "refs/tags/1.3.0";
  
  outputs = { self, nixpkgs, src-sqliteral-1_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sqliteral-1_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sqliteral-1_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}