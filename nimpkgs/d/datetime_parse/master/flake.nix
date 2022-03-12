{
  description = ''parse datetime from various resources'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-datetime_parse-master.flake = false;
  inputs.src-datetime_parse-master.owner = "bung87";
  inputs.src-datetime_parse-master.ref   = "refs/heads/master";
  inputs.src-datetime_parse-master.repo  = "datetime_parse";
  inputs.src-datetime_parse-master.type  = "github";
  
  inputs."timezones".dir   = "nimpkgs/t/timezones";
  inputs."timezones".owner = "riinr";
  inputs."timezones".ref   = "flake-pinning";
  inputs."timezones".repo  = "flake-nimble";
  inputs."timezones".type  = "github";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-datetime_parse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-datetime_parse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}