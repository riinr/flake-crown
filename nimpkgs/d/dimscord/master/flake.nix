{
  description = ''A Discord Bot & REST Library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscord-master.flake = false;
  inputs.src-dimscord-master.owner = "krisppurg";
  inputs.src-dimscord-master.ref   = "refs/heads/master";
  inputs.src-dimscord-master.repo  = "dimscord";
  inputs.src-dimscord-master.type  = "github";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."libsodium".dir   = "nimpkgs/l/libsodium";
  inputs."libsodium".owner = "riinr";
  inputs."libsodium".ref   = "flake-pinning";
  inputs."libsodium".repo  = "flake-nimble";
  inputs."libsodium".type  = "github";
  inputs."libsodium".inputs.nixpkgs.follows = "nixpkgs";
  inputs."libsodium".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".dir   = "nimpkgs/f/flatty";
  inputs."flatty".owner = "riinr";
  inputs."flatty".ref   = "flake-pinning";
  inputs."flatty".repo  = "flake-nimble";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscord-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscord-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}