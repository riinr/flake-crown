{
  description = ''Export Nim functions to sqlite3'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-exporttosqlite3-main.flake = false;
  inputs.src-exporttosqlite3-main.owner = "niklaskorz";
  inputs.src-exporttosqlite3-main.ref   = "refs/heads/main";
  inputs.src-exporttosqlite3-main.repo  = "nim-exporttosqlite3";
  inputs.src-exporttosqlite3-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-exporttosqlite3-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-exporttosqlite3-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}