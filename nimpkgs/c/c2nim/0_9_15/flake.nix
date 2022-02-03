{
  description = ''c2nim is a tool to translate Ansi C code to Nim.'';
  inputs.src-c2nim-0_9_15.flake = false;
  inputs.src-c2nim-0_9_15.type = "github";
  inputs.src-c2nim-0_9_15.owner = "nim-lang";
  inputs.src-c2nim-0_9_15.repo = "c2nim";
  inputs.src-c2nim-0_9_15.ref = "refs/tags/0.9.15";
  
  outputs = { self, nixpkgs, src-c2nim-0_9_15, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-c2nim-0_9_15;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-c2nim-0_9_15"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}