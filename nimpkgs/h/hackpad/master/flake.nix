{
  description = ''Hackathon Web Scratchpad for teaching Nim on events using Wifi with limited or no Internet'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hackpad-master.flake = false;
  inputs.src-hackpad-master.owner = "juancarlospaco";
  inputs.src-hackpad-master.ref   = "refs/heads/master";
  inputs.src-hackpad-master.repo  = "nim-hackpad";
  inputs.src-hackpad-master.type  = "github";
  
  inputs."jester".dir   = "nimpkgs/j/jester";
  inputs."jester".owner = "riinr";
  inputs."jester".ref   = "flake-pinning";
  inputs."jester".repo  = "flake-nimble";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hackpad-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hackpad-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}