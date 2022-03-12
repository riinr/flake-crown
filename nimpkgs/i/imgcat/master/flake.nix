{
  description = ''See pictures in your console'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-imgcat-master.flake = false;
  inputs.src-imgcat-master.owner = "not-lum";
  inputs.src-imgcat-master.ref   = "refs/heads/master";
  inputs.src-imgcat-master.repo  = "imgcat";
  inputs.src-imgcat-master.type  = "github";
  
  inputs."imageman".dir   = "nimpkgs/i/imageman";
  inputs."imageman".owner = "riinr";
  inputs."imageman".ref   = "flake-pinning";
  inputs."imageman".repo  = "flake-nimble";
  inputs."imageman".type  = "github";
  inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argparse".dir   = "nimpkgs/a/argparse";
  inputs."argparse".owner = "riinr";
  inputs."argparse".ref   = "flake-pinning";
  inputs."argparse".repo  = "flake-nimble";
  inputs."argparse".type  = "github";
  inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-imgcat-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-imgcat-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}