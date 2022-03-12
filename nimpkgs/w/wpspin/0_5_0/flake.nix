{
  description = ''Full-featured WPS PIN generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wpspin-0_5_0.flake = false;
  inputs.src-wpspin-0_5_0.owner = "drygdryg";
  inputs.src-wpspin-0_5_0.ref   = "refs/tags/0.5.0";
  inputs.src-wpspin-0_5_0.repo  = "wpspin-nim";
  inputs.src-wpspin-0_5_0.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wpspin-0_5_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wpspin-0_5_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}