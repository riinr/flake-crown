{
  description = ''A Nim wrapper for Python's matplotlib'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-matplotnim-master.flake = false;
  inputs.src-matplotnim-master.owner = "ruivieira";
  inputs.src-matplotnim-master.ref   = "refs/heads/master";
  inputs.src-matplotnim-master.repo  = "matplotnim";
  inputs.src-matplotnim-master.type  = "github";
  
  inputs."tempfile".dir   = "nimpkgs/t/tempfile";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".ref   = "flake-pinning";
  inputs."tempfile".repo  = "flake-nimble";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpy".dir   = "nimpkgs/n/nimpy";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".ref   = "flake-pinning";
  inputs."nimpy".repo  = "flake-nimble";
  inputs."nimpy".type  = "github";
  inputs."nimpy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-matplotnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-matplotnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}