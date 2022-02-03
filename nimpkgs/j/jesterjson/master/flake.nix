{
  description = ''A Jester web plugin that embeds key information into a JSON object.'';
  inputs.src-jesterjson-master.flake = false;
  inputs.src-jesterjson-master.type = "github";
  inputs.src-jesterjson-master.owner = "JohnAD";
  inputs.src-jesterjson-master.repo = "jesterjson";
  inputs.src-jesterjson-master.ref = "refs/heads/master";
  
  
  inputs."jesterwithplugins".url = "path:../../../j/jesterwithplugins";
  inputs."jesterwithplugins".type = "github";
  inputs."jesterwithplugins".owner = "riinr";
  inputs."jesterwithplugins".repo = "flake-nimble";
  inputs."jesterwithplugins".ref = "flake-pinning";
  inputs."jesterwithplugins".dir = "nimpkgs/j/jesterwithplugins";

  outputs = { self, nixpkgs, src-jesterjson-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jesterjson-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jesterjson-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}