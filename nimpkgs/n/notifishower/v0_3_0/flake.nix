{
  description = ''Small program to draw notifications on the screen in a highly customisable way'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-notifishower-v0_3_0.flake = false;
  inputs.src-notifishower-v0_3_0.owner = "PMunch";
  inputs.src-notifishower-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-notifishower-v0_3_0.repo  = "notifishower";
  inputs.src-notifishower-v0_3_0.type  = "github";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."imlib2".dir   = "nimpkgs/i/imlib2";
  inputs."imlib2".owner = "riinr";
  inputs."imlib2".ref   = "flake-pinning";
  inputs."imlib2".repo  = "flake-nimble";
  inputs."imlib2".type  = "github";
  inputs."imlib2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."imlib2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/pmunch/x11".dir   = "nimpkgs/h/https://github.com/pmunch/x11";
  inputs."https://github.com/pmunch/x11".owner = "riinr";
  inputs."https://github.com/pmunch/x11".ref   = "flake-pinning";
  inputs."https://github.com/pmunch/x11".repo  = "flake-nimble";
  inputs."https://github.com/pmunch/x11".type  = "github";
  inputs."https://github.com/pmunch/x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/pmunch/x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."npeg".dir   = "nimpkgs/n/npeg";
  inputs."npeg".owner = "riinr";
  inputs."npeg".ref   = "flake-pinning";
  inputs."npeg".repo  = "flake-nimble";
  inputs."npeg".type  = "github";
  inputs."npeg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."npeg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kiwi".dir   = "nimpkgs/k/kiwi";
  inputs."kiwi".owner = "riinr";
  inputs."kiwi".ref   = "flake-pinning";
  inputs."kiwi".repo  = "flake-nimble";
  inputs."kiwi".type  = "github";
  inputs."kiwi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kiwi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-notifishower-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-notifishower-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}