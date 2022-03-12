{
  description = ''Google Play APK Uploader'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gplay-master.flake = false;
  inputs.src-gplay-master.owner = "yglukhov";
  inputs.src-gplay-master.ref   = "refs/heads/master";
  inputs.src-gplay-master.repo  = "gplay";
  inputs.src-gplay-master.type  = "github";
  
  inputs."jwt".dir   = "nimpkgs/j/jwt";
  inputs."jwt".owner = "riinr";
  inputs."jwt".ref   = "flake-pinning";
  inputs."jwt".repo  = "flake-nimble";
  inputs."jwt".type  = "github";
  inputs."jwt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jwt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gplay-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gplay-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}