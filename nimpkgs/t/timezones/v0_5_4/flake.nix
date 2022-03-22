{
  description = ''Timezone library compatible with the standard library. '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-timezones-v0_5_4.flake = false;
  inputs.src-timezones-v0_5_4.ref   = "refs/tags/v0.5.4";
  inputs.src-timezones-v0_5_4.owner = "GULPF";
  inputs.src-timezones-v0_5_4.repo  = "timezones";
  inputs.src-timezones-v0_5_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-timezones-v0_5_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-timezones-v0_5_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}