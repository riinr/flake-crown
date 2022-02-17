{
  description = ''A mod manager for TF2'';
  inputs.src-tf2plug-master.flake = false;
  inputs.src-tf2plug-master.type = "gitlab";
  inputs.src-tf2plug-master.owner = "waylon531";
  inputs.src-tf2plug-master.repo = "tf2plug";
  inputs.src-tf2plug-master.ref = "refs/heads/master";
  
  
  inputs."docopt".type = "github";
  inputs."docopt".owner = "riinr";
  inputs."docopt".repo = "flake-nimble";
  inputs."docopt".ref = "flake-pinning";
  inputs."docopt".dir = "nimpkgs/d/docopt";

  outputs = { self, nixpkgs, src-tf2plug-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tf2plug-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tf2plug-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}