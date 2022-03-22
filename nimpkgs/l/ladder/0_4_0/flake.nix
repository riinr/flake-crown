{
  description = ''Ladder logic macros for Nim. documentation hosted at http://ryuk.ooo/nimdocs/ladder/ladder.html'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ladder-0_4_0.flake = false;
  inputs.src-ladder-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-ladder-0_4_0.owner = "ryukoposting";
  inputs.src-ladder-0_4_0.repo  = "nim-ladder";
  inputs.src-ladder-0_4_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ladder-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ladder-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}