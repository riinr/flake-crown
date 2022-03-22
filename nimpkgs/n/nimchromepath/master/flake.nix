{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimchromepath-master.flake = false;
  inputs.src-nimchromepath-master.owner = "felipetesc";
  inputs.src-nimchromepath-master.ref   = "master";
  inputs.src-nimchromepath-master.repo  = "NimChromePath";
  inputs.src-nimchromepath-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimchromepath-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimchromepath-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}