{
  description = ''A Jester web plugin that gets a pooled MongoDB connection for each web query.'';
  inputs.src-jestermongopool-master.flake = false;
  inputs.src-jestermongopool-master.type = "github";
  inputs.src-jestermongopool-master.owner = "JohnAD";
  inputs.src-jestermongopool-master.repo = "jestermongopool";
  inputs.src-jestermongopool-master.ref = "refs/heads/master";
  
  
  inputs."jesterwithplugins".url = "path:../../../j/jesterwithplugins";
  inputs."jesterwithplugins".type = "github";
  inputs."jesterwithplugins".owner = "riinr";
  inputs."jesterwithplugins".repo = "flake-nimble";
  inputs."jesterwithplugins".ref = "flake-pinning";
  inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";

  
  inputs."mongopool".url = "path:../../../m/mongopool";
  inputs."mongopool".type = "github";
  inputs."mongopool".owner = "riinr";
  inputs."mongopool".repo = "flake-nimble";
  inputs."mongopool".ref = "flake-pinning";
  inputs."mongopool".dir = "nimpkgs/m/mongopool";

  outputs = { self, nixpkgs, src-jestermongopool-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jestermongopool-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jestermongopool-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}