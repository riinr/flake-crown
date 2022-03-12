{
  description = ''A Jester web plugin that allows easy message passing between pages using a browser cookie.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jestercookiemsgs-master".url = "path:./master";
  inputs."jestercookiemsgs-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestercookiemsgs-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jestercookiemsgs-v1_0_1".url = "path:./v1_0_1";
  inputs."jestercookiemsgs-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jestercookiemsgs-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}